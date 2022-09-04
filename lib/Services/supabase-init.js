import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://liuptfcueuofsikmexwa.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxpdXB0ZmN1ZXVvZnNpa21leHdhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjIxODQ5OTIsImV4cCI6MTk3Nzc2MDk5Mn0.HhoxPUbz_67MDSZZvQLuZH3zKHxXC3kkR_9Fk0NEOXo';
const supabase = createClient(supabaseUrl, supabaseKey);

async function insert(data1) {
    const { data, err } = await supabase.from('user_details').insert([data1]);
}

async function get(unique_id) {
    const { data, err } = await supabase
        .from('user_details')
        .select('*')
        .eq('unique_id', unique_id);

    try {
        data.forEach(info => console.log(info.logs));
    } catch (err) {
        console.log('Error');
    }
}

let sup = { get: get, insert: insert };

export default sup;
