// ignore_for_file: constant_identifier_names, depend_on_referenced_packages

import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const String APIURL = "https://wyfbgextmglqwcnmjlpr.supabase.co";
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind5ZmJnZXh0bWdscXdjbm1qbHByIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjE4ODA1MDgsImV4cCI6MTk3NzQ1NjUwOH0.ypGKJLfBYZavGU_MznzG97S2-M_rYFB-g1cN3l-W9Wc";
  static SupabaseClient supabaseClient = SupabaseClient(APIURL, APIKEY);
}
