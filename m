Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqLK-0005hu-2a
 for barebox@lists.infradead.org; Wed, 15 May 2019 09:37:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hQqLI-0002vR-N0
 for barebox@lists.infradead.org; Wed, 15 May 2019 11:36:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
 (envelope-from <afa@pengutronix.de>) id 1hQqLI-0001Lq-EA
 for barebox@lists.infradead.org; Wed, 15 May 2019 11:36:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2019 11:36:42 +0200
Message-Id: <20190515093644.9691-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190515093644.9691-1-a.fatoum@pengutronix.de>
References: <20190515093644.9691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/4] checkpatch: add upstream checkpatch v5.1 dependencies
To: barebox@lists.infradead.org

In preperation for pulling in the v5.1 checkpatch, we need to first
add some files it depends on that aren't available in barebox:

- cleanfile, cleanpatch, spelling.txt:
	we copy those over as-is
- spdxcheck.py:
    expects the existence of "other" and "exceptions" directories,
    which we don't need in barebox, thus they are patched out.
- const_structs.checkpatch:
	added file_operations for now. More can follow
- get_maintainer.pl:
	implemented a dummy to keep changes in checkpatch.pl to a minimum

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/cleanfile                |  178 ++++
 scripts/cleanpatch               |  260 ++++++
 scripts/const_structs.checkpatch |    2 +
 scripts/get_maintainer.pl        |   11 +
 scripts/spdxcheck.py             |  292 ++++++
 scripts/spelling.txt             | 1413 ++++++++++++++++++++++++++++++
 6 files changed, 2156 insertions(+)
 create mode 100755 scripts/cleanfile
 create mode 100755 scripts/cleanpatch
 create mode 100644 scripts/const_structs.checkpatch
 create mode 100755 scripts/get_maintainer.pl
 create mode 100755 scripts/spdxcheck.py
 create mode 100644 scripts/spelling.txt

diff --git a/scripts/cleanfile b/scripts/cleanfile
new file mode 100755
index 000000000000..c00c69b9171a
--- /dev/null
+++ b/scripts/cleanfile
@@ -0,0 +1,178 @@
+#!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0
+#
+# Clean a text file -- or directory of text files -- of stealth whitespace.
+# WARNING: this can be a highly destructive operation.  Use with caution.
+#
+
+use warnings;
+use bytes;
+use File::Basename;
+
+# Default options
+$max_width = 79;
+
+# Clean up space-tab sequences, either by removing spaces or
+# replacing them with tabs.
+sub clean_space_tabs($)
+{
+    no bytes;			# Tab alignment depends on characters
+
+    my($li) = @_;
+    my($lo) = '';
+    my $pos = 0;
+    my $nsp = 0;
+    my($i, $c);
+
+    for ($i = 0; $i < length($li); $i++) {
+	$c = substr($li, $i, 1);
+	if ($c eq "\t") {
+	    my $npos = ($pos+$nsp+8) & ~7;
+	    my $ntab = ($npos >> 3) - ($pos >> 3);
+	    $lo .= "\t" x $ntab;
+	    $pos = $npos;
+	    $nsp = 0;
+	} elsif ($c eq "\n" || $c eq "\r") {
+	    $lo .= " " x $nsp;
+	    $pos += $nsp;
+	    $nsp = 0;
+	    $lo .= $c;
+	    $pos = 0;
+	} elsif ($c eq " ") {
+	    $nsp++;
+	} else {
+	    $lo .= " " x $nsp;
+	    $pos += $nsp;
+	    $nsp = 0;
+	    $lo .= $c;
+	    $pos++;
+	}
+    }
+    $lo .= " " x $nsp;
+    return $lo;
+}
+
+# Compute the visual width of a string
+sub strwidth($) {
+    no bytes;			# Tab alignment depends on characters
+
+    my($li) = @_;
+    my($c, $i);
+    my $pos = 0;
+    my $mlen = 0;
+
+    for ($i = 0; $i < length($li); $i++) {
+	$c = substr($li,$i,1);
+	if ($c eq "\t") {
+	    $pos = ($pos+8) & ~7;
+	} elsif ($c eq "\n") {
+	    $mlen = $pos if ($pos > $mlen);
+	    $pos = 0;
+	} else {
+	    $pos++;
+	}
+    }
+
+    $mlen = $pos if ($pos > $mlen);
+    return $mlen;
+}
+
+$name = basename($0);
+
+@files = ();
+
+while (defined($a = shift(@ARGV))) {
+    if ($a =~ /^-/) {
+	if ($a eq '-width' || $a eq '-w') {
+	    $max_width = shift(@ARGV)+0;
+	} else {
+	    print STDERR "Usage: $name [-width #] files...\n";
+	    exit 1;
+	}
+    } else {
+	push(@files, $a);
+    }
+}
+
+foreach $f ( @files ) {
+    print STDERR "$name: $f\n";
+
+    if (! -f $f) {
+	print STDERR "$f: not a file\n";
+	next;
+    }
+
+    if (!open(FILE, '+<', $f)) {
+	print STDERR "$name: Cannot open file: $f: $!\n";
+	next;
+    }
+
+    binmode FILE;
+
+    # First, verify that it is not a binary file; consider any file
+    # with a zero byte to be a binary file.  Is there any better, or
+    # additional, heuristic that should be applied?
+    $is_binary = 0;
+
+    while (read(FILE, $data, 65536) > 0) {
+	if ($data =~ /\0/) {
+	    $is_binary = 1;
+	    last;
+	}
+    }
+
+    if ($is_binary) {
+	print STDERR "$name: $f: binary file\n";
+	next;
+    }
+
+    seek(FILE, 0, 0);
+
+    $in_bytes = 0;
+    $out_bytes = 0;
+    $blank_bytes = 0;
+
+    @blanks = ();
+    @lines  = ();
+    $lineno = 0;
+
+    while ( defined($line = <FILE>) ) {
+	$lineno++;
+	$in_bytes += length($line);
+	$line =~ s/[ \t\r]*$//;		# Remove trailing spaces
+	$line = clean_space_tabs($line);
+
+	if ( $line eq "\n" ) {
+	    push(@blanks, $line);
+	    $blank_bytes += length($line);
+	} else {
+	    push(@lines, @blanks);
+	    $out_bytes += $blank_bytes;
+	    push(@lines, $line);
+	    $out_bytes += length($line);
+	    @blanks = ();
+	    $blank_bytes = 0;
+	}
+
+	$l_width = strwidth($line);
+	if ($max_width && $l_width > $max_width) {
+	    print STDERR
+		"$f:$lineno: line exceeds $max_width characters ($l_width)\n";
+	}
+    }
+
+    # Any blanks at the end of the file are discarded
+
+    if ($in_bytes != $out_bytes) {
+	# Only write to the file if changed
+	seek(FILE, 0, 0);
+	print FILE @lines;
+
+	if ( !defined($where = tell(FILE)) ||
+	     !truncate(FILE, $where) ) {
+	    die "$name: Failed to truncate modified file: $f: $!\n";
+	}
+    }
+
+    close(FILE);
+}
diff --git a/scripts/cleanpatch b/scripts/cleanpatch
new file mode 100755
index 000000000000..9f1755271516
--- /dev/null
+++ b/scripts/cleanpatch
@@ -0,0 +1,260 @@
+#!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0
+#
+# Clean a patch file -- or directory of patch files -- of stealth whitespace.
+# WARNING: this can be a highly destructive operation.  Use with caution.
+#
+
+use warnings;
+use bytes;
+use File::Basename;
+
+# Default options
+$max_width = 79;
+
+# Clean up space-tab sequences, either by removing spaces or
+# replacing them with tabs.
+sub clean_space_tabs($)
+{
+    no bytes;			# Tab alignment depends on characters
+
+    my($li) = @_;
+    my($lo) = '';
+    my $pos = 0;
+    my $nsp = 0;
+    my($i, $c);
+
+    for ($i = 0; $i < length($li); $i++) {
+	$c = substr($li, $i, 1);
+	if ($c eq "\t") {
+	    my $npos = ($pos+$nsp+8) & ~7;
+	    my $ntab = ($npos >> 3) - ($pos >> 3);
+	    $lo .= "\t" x $ntab;
+	    $pos = $npos;
+	    $nsp = 0;
+	} elsif ($c eq "\n" || $c eq "\r") {
+	    $lo .= " " x $nsp;
+	    $pos += $nsp;
+	    $nsp = 0;
+	    $lo .= $c;
+	    $pos = 0;
+	} elsif ($c eq " ") {
+	    $nsp++;
+	} else {
+	    $lo .= " " x $nsp;
+	    $pos += $nsp;
+	    $nsp = 0;
+	    $lo .= $c;
+	    $pos++;
+	}
+    }
+    $lo .= " " x $nsp;
+    return $lo;
+}
+
+# Compute the visual width of a string
+sub strwidth($) {
+    no bytes;			# Tab alignment depends on characters
+
+    my($li) = @_;
+    my($c, $i);
+    my $pos = 0;
+    my $mlen = 0;
+
+    for ($i = 0; $i < length($li); $i++) {
+	$c = substr($li,$i,1);
+	if ($c eq "\t") {
+	    $pos = ($pos+8) & ~7;
+	} elsif ($c eq "\n") {
+	    $mlen = $pos if ($pos > $mlen);
+	    $pos = 0;
+	} else {
+	    $pos++;
+	}
+    }
+
+    $mlen = $pos if ($pos > $mlen);
+    return $mlen;
+}
+
+$name = basename($0);
+
+@files = ();
+
+while (defined($a = shift(@ARGV))) {
+    if ($a =~ /^-/) {
+	if ($a eq '-width' || $a eq '-w') {
+	    $max_width = shift(@ARGV)+0;
+	} else {
+	    print STDERR "Usage: $name [-width #] files...\n";
+	    exit 1;
+	}
+    } else {
+	push(@files, $a);
+    }
+}
+
+foreach $f ( @files ) {
+    print STDERR "$name: $f\n";
+
+    if (! -f $f) {
+	print STDERR "$f: not a file\n";
+	next;
+    }
+
+    if (!open(FILE, '+<', $f)) {
+	print STDERR "$name: Cannot open file: $f: $!\n";
+	next;
+    }
+
+    binmode FILE;
+
+    # First, verify that it is not a binary file; consider any file
+    # with a zero byte to be a binary file.  Is there any better, or
+    # additional, heuristic that should be applied?
+    $is_binary = 0;
+
+    while (read(FILE, $data, 65536) > 0) {
+	if ($data =~ /\0/) {
+	    $is_binary = 1;
+	    last;
+	}
+    }
+
+    if ($is_binary) {
+	print STDERR "$name: $f: binary file\n";
+	next;
+    }
+
+    seek(FILE, 0, 0);
+
+    $in_bytes = 0;
+    $out_bytes = 0;
+    $lineno = 0;
+
+    @lines  = ();
+
+    $in_hunk = 0;
+    $err = 0;
+
+    while ( defined($line = <FILE>) ) {
+	$lineno++;
+	$in_bytes += length($line);
+
+	if (!$in_hunk) {
+	    if ($line =~
+		/^\@\@\s+\-([0-9]+),([0-9]+)\s+\+([0-9]+),([0-9]+)\s\@\@/) {
+		$minus_lines = $2;
+		$plus_lines = $4;
+		if ($minus_lines || $plus_lines) {
+		    $in_hunk = 1;
+		    @hunk_lines = ($line);
+		}
+	    } else {
+		push(@lines, $line);
+		$out_bytes += length($line);
+	    }
+	} else {
+	    # We're in a hunk
+
+	    if ($line =~ /^\+/) {
+		$plus_lines--;
+
+		$text = substr($line, 1);
+		$text =~ s/[ \t\r]*$//;		# Remove trailing spaces
+		$text = clean_space_tabs($text);
+
+		$l_width = strwidth($text);
+		if ($max_width && $l_width > $max_width) {
+		    print STDERR
+			"$f:$lineno: adds line exceeds $max_width ",
+			"characters ($l_width)\n";
+		}
+
+		push(@hunk_lines, '+'.$text);
+	    } elsif ($line =~ /^\-/) {
+		$minus_lines--;
+		push(@hunk_lines, $line);
+	    } elsif ($line =~ /^ /) {
+		$plus_lines--;
+		$minus_lines--;
+		push(@hunk_lines, $line);
+	    } else {
+		print STDERR "$name: $f: malformed patch\n";
+		$err = 1;
+		last;
+	    }
+
+	    if ($plus_lines < 0 || $minus_lines < 0) {
+		print STDERR "$name: $f: malformed patch\n";
+		$err = 1;
+		last;
+	    } elsif ($plus_lines == 0 && $minus_lines == 0) {
+		# End of a hunk.  Process this hunk.
+		my $i;
+		my $l;
+		my @h = ();
+		my $adj = 0;
+		my $done = 0;
+
+		for ($i = scalar(@hunk_lines)-1; $i > 0; $i--) {
+		    $l = $hunk_lines[$i];
+		    if (!$done && $l eq "+\n") {
+			$adj++; # Skip this line
+		    } elsif ($l =~ /^[ +]/) {
+			$done = 1;
+			unshift(@h, $l);
+		    } else {
+			unshift(@h, $l);
+		    }
+		}
+
+		$l = $hunk_lines[0];  # Hunk header
+		undef @hunk_lines;    # Free memory
+
+		if ($adj) {
+		    die unless
+			($l =~ /^\@\@\s+\-([0-9]+),([0-9]+)\s+\+([0-9]+),([0-9]+)\s\@\@(.*)$/);
+		    my $mstart = $1;
+		    my $mlin = $2;
+		    my $pstart = $3;
+		    my $plin = $4;
+		    my $tail = $5; # doesn't include the final newline
+
+		    $l = sprintf("@@ -%d,%d +%d,%d @@%s\n",
+				 $mstart, $mlin, $pstart, $plin-$adj,
+				 $tail);
+		}
+		unshift(@h, $l);
+
+		# Transfer to the output array
+		foreach $l (@h) {
+		    $out_bytes += length($l);
+		    push(@lines, $l);
+		}
+
+		$in_hunk = 0;
+	    }
+	}
+    }
+
+    if ($in_hunk) {
+	print STDERR "$name: $f: malformed patch\n";
+	$err = 1;
+    }
+
+    if (!$err) {
+	if ($in_bytes != $out_bytes) {
+	    # Only write to the file if changed
+	    seek(FILE, 0, 0);
+	    print FILE @lines;
+
+	    if ( !defined($where = tell(FILE)) ||
+		 !truncate(FILE, $where) ) {
+		die "$name: Failed to truncate modified file: $f: $!\n";
+	    }
+	}
+    }
+
+    close(FILE);
+}
diff --git a/scripts/const_structs.checkpatch b/scripts/const_structs.checkpatch
new file mode 100644
index 000000000000..317c8244751e
--- /dev/null
+++ b/scripts/const_structs.checkpatch
@@ -0,0 +1,2 @@
+# Put structs here that should be constant
+file_operations
diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
new file mode 100755
index 000000000000..7c0d50333400
--- /dev/null
+++ b/scripts/get_maintainer.pl
@@ -0,0 +1,11 @@
+#!/usr/bin/env perl
+# SPDX-License-Identifier: GPL-2.0-only
+# Dummy get_maintainer.pl script for checkpatch.pl to use
+
+die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
+
+print <<'EOT'
+Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
+barebox@lists.infradead.org (open list:BAREBOX)
+Maintained
+EOT
diff --git a/scripts/spdxcheck.py b/scripts/spdxcheck.py
new file mode 100755
index 000000000000..723bfa4ebf77
--- /dev/null
+++ b/scripts/spdxcheck.py
@@ -0,0 +1,292 @@
+#!/usr/bin/env python
+# SPDX-License-Identifier: GPL-2.0
+# Copyright Thomas Gleixner <tglx@linutronix.de>
+
+from argparse import ArgumentParser
+from ply import lex, yacc
+import locale
+import traceback
+import sys
+import git
+import re
+import os
+
+class ParserException(Exception):
+    def __init__(self, tok, txt):
+        self.tok = tok
+        self.txt = txt
+
+class SPDXException(Exception):
+    def __init__(self, el, txt):
+        self.el = el
+        self.txt = txt
+
+class SPDXdata(object):
+    def __init__(self):
+        self.license_files = 0
+        self.exception_files = 0
+        self.licenses = [ ]
+        self.exceptions = { }
+
+# Read the spdx data from the LICENSES directory
+def read_spdxdata(repo):
+
+    # The subdirectories of LICENSES in the kernel source
+    license_dirs = [ "preferred" ]
+    lictree = repo.head.commit.tree['LICENSES']
+
+    spdx = SPDXdata()
+
+    for d in license_dirs:
+        for el in lictree[d].traverse():
+            if not os.path.isfile(el.path):
+                continue
+
+            exception = None
+            for l in open(el.path).readlines():
+                if l.startswith('Valid-License-Identifier:'):
+                    lid = l.split(':')[1].strip().upper()
+                    if lid in spdx.licenses:
+                        raise SPDXException(el, 'Duplicate License Identifier: %s' %lid)
+                    else:
+                        spdx.licenses.append(lid)
+
+                elif l.startswith('SPDX-Exception-Identifier:'):
+                    exception = l.split(':')[1].strip().upper()
+                    spdx.exceptions[exception] = []
+
+                elif l.startswith('SPDX-Licenses:'):
+                    for lic in l.split(':')[1].upper().strip().replace(' ', '').replace('\t', '').split(','):
+                        if not lic in spdx.licenses:
+                            raise SPDXException(None, 'Exception %s missing license %s' %(ex, lic))
+                        spdx.exceptions[exception].append(lic)
+
+                elif l.startswith("License-Text:"):
+                    if exception:
+                        if not len(spdx.exceptions[exception]):
+                            raise SPDXException(el, 'Exception %s is missing SPDX-Licenses' %excid)
+                        spdx.exception_files += 1
+                    else:
+                        spdx.license_files += 1
+                    break
+    return spdx
+
+class id_parser(object):
+
+    reserved = [ 'AND', 'OR', 'WITH' ]
+    tokens = [ 'LPAR', 'RPAR', 'ID', 'EXC' ] + reserved
+
+    precedence = ( ('nonassoc', 'AND', 'OR'), )
+
+    t_ignore = ' \t'
+
+    def __init__(self, spdx):
+        self.spdx = spdx
+        self.lasttok = None
+        self.lastid = None
+        self.lexer = lex.lex(module = self, reflags = re.UNICODE)
+        # Initialize the parser. No debug file and no parser rules stored on disk
+        # The rules are small enough to be generated on the fly
+        self.parser = yacc.yacc(module = self, write_tables = False, debug = False)
+        self.lines_checked = 0
+        self.checked = 0
+        self.spdx_valid = 0
+        self.spdx_errors = 0
+        self.curline = 0
+        self.deepest = 0
+
+    # Validate License and Exception IDs
+    def validate(self, tok):
+        id = tok.value.upper()
+        if tok.type == 'ID':
+            if not id in self.spdx.licenses:
+                raise ParserException(tok, 'Invalid License ID')
+            self.lastid = id
+        elif tok.type == 'EXC':
+            if id not in self.spdx.exceptions:
+                raise ParserException(tok, 'Invalid Exception ID')
+            if self.lastid not in self.spdx.exceptions[id]:
+                raise ParserException(tok, 'Exception not valid for license %s' %self.lastid)
+            self.lastid = None
+        elif tok.type != 'WITH':
+            self.lastid = None
+
+    # Lexer functions
+    def t_RPAR(self, tok):
+        r'\)'
+        self.lasttok = tok.type
+        return tok
+
+    def t_LPAR(self, tok):
+        r'\('
+        self.lasttok = tok.type
+        return tok
+
+    def t_ID(self, tok):
+        r'[A-Za-z.0-9\-+]+'
+
+        if self.lasttok == 'EXC':
+            print(tok)
+            raise ParserException(tok, 'Missing parentheses')
+
+        tok.value = tok.value.strip()
+        val = tok.value.upper()
+
+        if val in self.reserved:
+            tok.type = val
+        elif self.lasttok == 'WITH':
+            tok.type = 'EXC'
+
+        self.lasttok = tok.type
+        self.validate(tok)
+        return tok
+
+    def t_error(self, tok):
+        raise ParserException(tok, 'Invalid token')
+
+    def p_expr(self, p):
+        '''expr : ID
+                | ID WITH EXC
+                | expr AND expr
+                | expr OR expr
+                | LPAR expr RPAR'''
+        pass
+
+    def p_error(self, p):
+        if not p:
+            raise ParserException(None, 'Unfinished license expression')
+        else:
+            raise ParserException(p, 'Syntax error')
+
+    def parse(self, expr):
+        self.lasttok = None
+        self.lastid = None
+        self.parser.parse(expr, lexer = self.lexer)
+
+    def parse_lines(self, fd, maxlines, fname):
+        self.checked += 1
+        self.curline = 0
+        try:
+            for line in fd:
+                line = line.decode(locale.getpreferredencoding(False), errors='ignore')
+                self.curline += 1
+                if self.curline > maxlines:
+                    break
+                self.lines_checked += 1
+                if line.find("SPDX-License-Identifier:") < 0:
+                    continue
+                expr = line.split(':')[1].strip()
+                # Remove trailing comment closure
+                if line.strip().endswith('*/'):
+                    expr = expr.rstrip('*/').strip()
+                # Special case for SH magic boot code files
+                if line.startswith('LIST \"'):
+                    expr = expr.rstrip('\"').strip()
+                self.parse(expr)
+                self.spdx_valid += 1
+                #
+                # Should we check for more SPDX ids in the same file and
+                # complain if there are any?
+                #
+                break
+
+        except ParserException as pe:
+            if pe.tok:
+                col = line.find(expr) + pe.tok.lexpos
+                tok = pe.tok.value
+                sys.stdout.write('%s: %d:%d %s: %s\n' %(fname, self.curline, col, pe.txt, tok))
+            else:
+                sys.stdout.write('%s: %d:0 %s\n' %(fname, self.curline, col, pe.txt))
+            self.spdx_errors += 1
+
+def scan_git_tree(tree):
+    for el in tree.traverse():
+        # Exclude stuff which would make pointless noise
+        # FIXME: Put this somewhere more sensible
+        if el.path.startswith("LICENSES"):
+            continue
+        if el.path.find("license-rules.rst") >= 0:
+            continue
+        if not os.path.isfile(el.path):
+            continue
+        with open(el.path, 'rb') as fd:
+            parser.parse_lines(fd, args.maxlines, el.path)
+
+def scan_git_subtree(tree, path):
+    for p in path.strip('/').split('/'):
+        tree = tree[p]
+    scan_git_tree(tree)
+
+if __name__ == '__main__':
+
+    ap = ArgumentParser(description='SPDX expression checker')
+    ap.add_argument('path', nargs='*', help='Check path or file. If not given full git tree scan. For stdin use "-"')
+    ap.add_argument('-m', '--maxlines', type=int, default=15,
+                    help='Maximum number of lines to scan in a file. Default 15')
+    ap.add_argument('-v', '--verbose', action='store_true', help='Verbose statistics output')
+    args = ap.parse_args()
+
+    # Sanity check path arguments
+    if '-' in args.path and len(args.path) > 1:
+        sys.stderr.write('stdin input "-" must be the only path argument\n')
+        sys.exit(1)
+
+    try:
+        # Use git to get the valid license expressions
+        repo = git.Repo(os.getcwd())
+        assert not repo.bare
+
+        # Initialize SPDX data
+        spdx = read_spdxdata(repo)
+
+        # Initilize the parser
+        parser = id_parser(spdx)
+
+    except SPDXException as se:
+        if se.el:
+            sys.stderr.write('%s: %s\n' %(se.el.path, se.txt))
+        else:
+            sys.stderr.write('%s\n' %se.txt)
+        sys.exit(1)
+
+    except Exception as ex:
+        sys.stderr.write('FAIL: %s\n' %ex)
+        sys.stderr.write('%s\n' %traceback.format_exc())
+        sys.exit(1)
+
+    try:
+        if len(args.path) and args.path[0] == '-':
+            stdin = os.fdopen(sys.stdin.fileno(), 'rb')
+            parser.parse_lines(stdin, args.maxlines, '-')
+        else:
+            if args.path:
+                for p in args.path:
+                    if os.path.isfile(p):
+                        parser.parse_lines(open(p, 'rb'), args.maxlines, p)
+                    elif os.path.isdir(p):
+                        scan_git_subtree(repo.head.reference.commit.tree, p)
+                    else:
+                        sys.stderr.write('path %s does not exist\n' %p)
+                        sys.exit(1)
+            else:
+                # Full git tree scan
+                scan_git_tree(repo.head.commit.tree)
+
+            if args.verbose:
+                sys.stderr.write('\n')
+                sys.stderr.write('License files:     %12d\n' %spdx.license_files)
+                sys.stderr.write('Exception files:   %12d\n' %spdx.exception_files)
+                sys.stderr.write('License IDs        %12d\n' %len(spdx.licenses))
+                sys.stderr.write('Exception IDs      %12d\n' %len(spdx.exceptions))
+                sys.stderr.write('\n')
+                sys.stderr.write('Files checked:     %12d\n' %parser.checked)
+                sys.stderr.write('Lines checked:     %12d\n' %parser.lines_checked)
+                sys.stderr.write('Files with SPDX:   %12d\n' %parser.spdx_valid)
+                sys.stderr.write('Files with errors: %12d\n' %parser.spdx_errors)
+
+            sys.exit(0)
+
+    except Exception as ex:
+        sys.stderr.write('FAIL: %s\n' %ex)
+        sys.stderr.write('%s\n' %traceback.format_exc())
+        sys.exit(1)
diff --git a/scripts/spelling.txt b/scripts/spelling.txt
new file mode 100644
index 000000000000..86b87332b9e5
--- /dev/null
+++ b/scripts/spelling.txt
@@ -0,0 +1,1413 @@
+# Originally from Debian's Lintian tool. Various false positives have been
+# removed, and various additions have been made as they've been discovered
+# in the kernel source.
+#
+# License: GPLv2
+#
+# The format of each line is:
+# mistake||correction
+#
+abandonning||abandoning
+abigious||ambiguous
+abitrate||arbitrate
+abnornally||abnormally
+abnrormal||abnormal
+abord||abort
+aboslute||absolute
+abov||above
+abreviated||abbreviated
+absense||absence
+absolut||absolute
+absoulte||absolute
+acccess||access
+acceess||access
+acceleratoin||acceleration
+accelleration||acceleration
+accesing||accessing
+accesnt||accent
+accessable||accessible
+accesss||access
+accidentaly||accidentally
+accidentually||accidentally
+acclerated||accelerated
+accoding||according
+accomodate||accommodate
+accomodates||accommodates
+accordign||according
+accoring||according
+accout||account
+accquire||acquire
+accquired||acquired
+accross||across
+acessable||accessible
+acess||access
+achitecture||architecture
+acient||ancient
+acitions||actions
+acitve||active
+acknowldegement||acknowledgment
+acknowledgement||acknowledgment
+ackowledge||acknowledge
+ackowledged||acknowledged
+acording||according
+activete||activate
+actived||activated
+actualy||actually
+acumulating||accumulating
+acumulator||accumulator
+adapater||adapter
+addional||additional
+additionaly||additionally
+additonal||additional
+addres||address
+adddress||address
+addreses||addresses
+addresss||address
+addrress||address
+aditional||additional
+aditionally||additionally
+aditionaly||additionally
+adminstrative||administrative
+adress||address
+adresses||addresses
+adrresses||addresses
+advertisment||advertisement
+adviced||advised
+afecting||affecting
+againt||against
+agaist||against
+aggreataon||aggregation
+aggreation||aggregation
+albumns||albums
+alegorical||allegorical
+algined||aligned
+algorith||algorithm
+algorithmical||algorithmically
+algoritm||algorithm
+algoritms||algorithms
+algorrithm||algorithm
+algorritm||algorithm
+aligment||alignment
+alignement||alignment
+allign||align
+alligned||aligned
+alllocate||allocate
+alloated||allocated
+allocatote||allocate
+allocatrd||allocated
+allocte||allocate
+allpication||application
+alocate||allocate
+alogirhtms||algorithms
+alogrithm||algorithm
+alot||a lot
+alow||allow
+alows||allows
+altough||although
+alue||value
+ambigious||ambiguous
+amoung||among
+amout||amount
+amplifer||amplifier
+amplifyer||amplifier
+an union||a union
+an user||a user
+an userspace||a userspace
+an one||a one
+analysator||analyzer
+ang||and
+anniversery||anniversary
+annoucement||announcement
+anomolies||anomalies
+anomoly||anomaly
+anway||anyway
+aplication||application
+appearence||appearance
+applicaion||application
+appliction||application
+applictions||applications
+applys||applies
+appplications||applications
+appropiate||appropriate
+appropriatly||appropriately
+approriate||appropriate
+approriately||appropriately
+apropriate||appropriate
+aquainted||acquainted
+aquired||acquired
+aquisition||acquisition
+arbitary||arbitrary
+architechture||architecture
+arguement||argument
+arguements||arguments
+aritmetic||arithmetic
+arne't||aren't
+arraival||arrival
+artifical||artificial
+artillary||artillery
+asign||assign
+asser||assert
+assertation||assertion
+assertting||asserting
+assiged||assigned
+assigment||assignment
+assigments||assignments
+assistent||assistant
+assocation||association
+associcated||associated
+assotiated||associated
+asssert||assert
+assum||assume
+assumtpion||assumption
+asuming||assuming
+asycronous||asynchronous
+asynchnous||asynchronous
+asynchromous||asynchronous
+asymetric||asymmetric
+asymmeric||asymmetric
+atomatically||automatically
+atomicly||atomically
+atempt||attempt
+attachement||attachment
+attched||attached
+attemps||attempts
+attemping||attempting
+attepmpt||attempt
+attnetion||attention
+attruibutes||attributes
+authentification||authentication
+automaticaly||automatically
+automaticly||automatically
+automatize||automate
+automatized||automated
+automatizes||automates
+autonymous||autonomous
+auxillary||auxiliary
+auxilliary||auxiliary
+avaiable||available
+avaible||available
+availabe||available
+availabled||available
+availablity||availability
+availaible||available
+availale||available
+availavility||availability
+availble||available
+availiable||available
+availible||available
+avalable||available
+avaliable||available
+aysnc||async
+backgroud||background
+backword||backward
+backwords||backwards
+bahavior||behavior
+bakup||backup
+baloon||balloon
+baloons||balloons
+bandwith||bandwidth
+banlance||balance
+batery||battery
+beacuse||because
+becasue||because
+becomming||becoming
+becuase||because
+beeing||being
+befor||before
+begining||beginning
+beter||better
+betweeen||between
+bianries||binaries
+bitmast||bitmask
+boardcast||broadcast
+borad||board
+boundry||boundary
+brievely||briefly
+broadcase||broadcast
+broadcat||broadcast
+bufufer||buffer
+cacluated||calculated
+caculate||calculate
+caculation||calculation
+cadidate||candidate
+calender||calendar
+calescing||coalescing
+calle||called
+callibration||calibration
+calucate||calculate
+calulate||calculate
+cancelation||cancellation
+cancle||cancel
+capabilites||capabilities
+capabilty||capability
+capabitilies||capabilities
+capablity||capability
+capatibilities||capabilities
+capapbilities||capabilities
+caputure||capture
+carefuly||carefully
+cariage||carriage
+catagory||category
+cehck||check
+challange||challenge
+challanges||challenges
+chache||cache
+chanell||channel
+changable||changeable
+chanined||chained
+channle||channel
+channnel||channel
+charachter||character
+charachters||characters
+charactor||character
+charater||character
+charaters||characters
+charcter||character
+chcek||check
+chck||check
+checksumed||checksummed
+checksuming||checksumming
+childern||children
+childs||children
+chiled||child
+chked||checked
+chnage||change
+chnages||changes
+chnnel||channel
+choosen||chosen
+chouse||chose
+circumvernt||circumvent
+claread||cleared
+clared||cleared
+closeing||closing
+clustred||clustered
+coexistance||coexistence
+colescing||coalescing
+collapsable||collapsible
+colorfull||colorful
+comand||command
+comit||commit
+commerical||commercial
+comming||coming
+comminucation||communication
+commited||committed
+commiting||committing
+committ||commit
+commoditiy||commodity
+comsume||consume
+comsumer||consumer
+comsuming||consuming
+compability||compatibility
+compaibility||compatibility
+comparsion||comparison
+compatability||compatibility
+compatable||compatible
+compatibiliy||compatibility
+compatibilty||compatibility
+compatiblity||compatibility
+competion||completion
+compilant||compliant
+compleatly||completely
+completition||completion
+completly||completely
+complient||compliant
+componnents||components
+compoment||component
+comppatible||compatible
+compres||compress
+compresion||compression
+comression||compression
+comunication||communication
+conbination||combination
+conditionaly||conditionally
+conected||connected
+conector||connector
+connecetd||connected
+configuartion||configuration
+configuation||configuration
+configuratoin||configuration
+configuraton||configuration
+configuretion||configuration
+configutation||configuration
+conider||consider
+conjuction||conjunction
+connectinos||connections
+connnection||connection
+connnections||connections
+consistancy||consistency
+consistant||consistent
+containes||contains
+containts||contains
+contaisn||contains
+contant||contact
+contence||contents
+continious||continuous
+continous||continuous
+continously||continuously
+continueing||continuing
+contraints||constraints
+contruct||construct
+contol||control
+contoller||controller
+controled||controlled
+controler||controller
+controll||control
+contruction||construction
+contry||country
+conuntry||country
+convertion||conversion
+convertor||converter
+convienient||convenient
+convinient||convenient
+corected||corrected
+correponding||corresponding
+correponds||corresponds
+correspoding||corresponding
+cotrol||control
+cound||could
+couter||counter
+coutner||counter
+cryptocraphic||cryptographic
+cunter||counter
+curently||currently
+cylic||cyclic
+dafault||default
+deafult||default
+deamon||daemon
+decompres||decompress
+decsribed||described
+decription||description
+dectected||detected
+defailt||default
+deferal||deferral
+deffered||deferred
+defferred||deferred
+definate||definite
+definately||definitely
+defintion||definition
+defintions||definitions
+defualt||default
+defult||default
+deintializing||deinitializing
+deintialize||deinitialize
+deintialized||deinitialized
+deivce||device
+delared||declared
+delare||declare
+delares||declares
+delaring||declaring
+delemiter||delimiter
+demodualtor||demodulator
+demension||dimension
+dependancies||dependencies
+dependancy||dependency
+dependant||dependent
+depreacted||deprecated
+depreacte||deprecate
+desactivate||deactivate
+desciptor||descriptor
+desciptors||descriptors
+descripton||description
+descrition||description
+descritptor||descriptor
+desctiptor||descriptor
+desriptor||descriptor
+desriptors||descriptors
+desination||destination
+destionation||destination
+destoried||destroyed
+destory||destroy
+destoryed||destroyed
+destorys||destroys
+destroied||destroyed
+detabase||database
+deteced||detected
+develope||develop
+developement||development
+developped||developed
+developpement||development
+developper||developer
+developpment||development
+deveolpment||development
+devided||divided
+deviece||device
+diable||disable
+dictionnary||dictionary
+didnt||didn't
+diferent||different
+differrence||difference
+diffrent||different
+differenciate||differentiate
+diffrentiate||differentiate
+difinition||definition
+dimention||dimension
+dimesions||dimensions
+dispalying||displaying
+diplay||display
+directon||direction
+direectly||directly
+diregard||disregard
+disassocation||disassociation
+disapear||disappear
+disapeared||disappeared
+disappared||disappeared
+disbale||disable
+disbaled||disabled
+disble||disable
+disbled||disabled
+disconnet||disconnect
+discontinous||discontinuous
+disharge||discharge
+disnabled||disabled
+dispertion||dispersion
+dissapears||disappears
+distiction||distinction
+divisable||divisible
+divsiors||divisors
+docuentation||documentation
+documantation||documentation
+documentaion||documentation
+documment||document
+doesnt||doesn't
+dorp||drop
+dosen||doesn
+downlad||download
+downlads||downloads
+droped||dropped
+druing||during
+dynmaic||dynamic
+eanable||enable
+easilly||easily
+ecspecially||especially
+edditable||editable
+editting||editing
+efective||effective
+efficently||efficiently
+ehther||ether
+eigth||eight
+elementry||elementary
+eletronic||electronic
+embeded||embedded
+enabledi||enabled
+enble||enable
+enchanced||enhanced
+encorporating||incorporating
+encrupted||encrypted
+encrypiton||encryption
+encryptio||encryption
+endianess||endianness
+enhaced||enhanced
+enlightnment||enlightenment
+enqueing||enqueuing
+entires||entries
+entites||entities
+entrys||entries
+enocded||encoded
+enterily||entirely
+enviroiment||environment
+enviroment||environment
+environement||environment
+environent||environment
+eqivalent||equivalent
+equiped||equipped
+equivelant||equivalent
+equivilant||equivalent
+eror||error
+errorr||error
+estbalishment||establishment
+etsablishment||establishment
+etsbalishment||establishment
+excecutable||executable
+exceded||exceeded
+excellant||excellent
+execeeded||exceeded
+execeeds||exceeds
+exeed||exceed
+existance||existence
+existant||existent
+exixt||exist
+exlcude||exclude
+exlcusive||exclusive
+exmaple||example
+expecially||especially
+experies||expires
+explicite||explicit
+explicitely||explicitly
+explict||explicit
+explictely||explicitly
+explictly||explicitly
+expresion||expression
+exprimental||experimental
+extened||extended
+extensability||extensibility
+extention||extension
+extenstion||extension
+extracter||extractor
+faield||failed
+falied||failed
+faild||failed
+failded||failed
+failer||failure
+faill||fail
+failied||failed
+faillure||failure
+failue||failure
+failuer||failure
+failng||failing
+faireness||fairness
+falied||failed
+faliure||failure
+fallbck||fallback
+familar||familiar
+fatser||faster
+feauture||feature
+feautures||features
+fetaure||feature
+fetaures||features
+fileystem||filesystem
+fimware||firmware
+firmare||firmware
+firware||firmware
+finanize||finalize
+findn||find
+finilizes||finalizes
+finsih||finish
+flusing||flushing
+folloing||following
+followign||following
+followings||following
+follwing||following
+fonud||found
+forseeable||foreseeable
+forse||force
+fortan||fortran
+forwardig||forwarding
+frambuffer||framebuffer
+framming||framing
+framwork||framework
+frequncy||frequency
+frome||from
+fucntion||function
+fuction||function
+fuctions||functions
+funcation||function
+funcion||function
+functionallity||functionality
+functionaly||functionally
+functionnality||functionality
+functonality||functionality
+funtion||function
+funtions||functions
+furthur||further
+futhermore||furthermore
+futrue||future
+gauage||gauge
+gaurenteed||guaranteed
+generiously||generously
+genereate||generate
+genereted||generated
+genric||generic
+globel||global
+grabing||grabbing
+grahical||graphical
+grahpical||graphical
+grapic||graphic
+grranted||granted
+guage||gauge
+guarenteed||guaranteed
+guarentee||guarantee
+halfs||halves
+hander||handler
+handfull||handful
+hanlde||handle
+hanled||handled
+happend||happened
+harware||hardware
+heirarchically||hierarchically
+helpfull||helpful
+hybernate||hibernate
+hierachy||hierarchy
+hierarchie||hierarchy
+homogenous||homogeneous
+howver||however
+hsould||should
+hypervior||hypervisor
+hypter||hyper
+identidier||identifier
+iligal||illegal
+illigal||illegal
+illgal||illegal
+iomaped||iomapped
+imblance||imbalance
+immeadiately||immediately
+immedaite||immediate
+immediatelly||immediately
+immediatly||immediately
+immidiate||immediate
+impelentation||implementation
+impementated||implemented
+implemantation||implementation
+implemenation||implementation
+implementaiton||implementation
+implementated||implemented
+implemention||implementation
+implementd||implemented
+implemetation||implementation
+implemntation||implementation
+implentation||implementation
+implmentation||implementation
+implmenting||implementing
+incative||inactive
+incomming||incoming
+incompatabilities||incompatibilities
+incompatable||incompatible
+inconsistant||inconsistent
+increas||increase
+incremeted||incremented
+incrment||increment
+indendation||indentation
+indended||intended
+independant||independent
+independantly||independently
+independed||independent
+indiate||indicate
+indicat||indicate
+inexpect||inexpected
+inferface||interface
+infomation||information
+informatiom||information
+informations||information
+informtion||information
+infromation||information
+ingore||ignore
+inital||initial
+initalized||initialized
+initalised||initialized
+initalise||initialize
+initalize||initialize
+initation||initiation
+initators||initiators
+initialiazation||initialization
+initializiation||initialization
+initialze||initialize
+initialzed||initialized
+initialzing||initializing
+initilization||initialization
+initilize||initialize
+inofficial||unofficial
+inrerface||interface
+insititute||institute
+instace||instance
+instal||install
+instanciate||instantiate
+instanciated||instantiated
+insufficent||insufficient
+inteface||interface
+integreated||integrated
+integrety||integrity
+integrey||integrity
+intendet||intended
+intented||intended
+interanl||internal
+interchangable||interchangeable
+interferring||interfering
+interger||integer
+intermittant||intermittent
+internel||internal
+interoprability||interoperability
+interuupt||interrupt
+interupt||interrupt
+interupts||interrupts
+interrface||interface
+interrrupt||interrupt
+interrup||interrupt
+interrups||interrupts
+interruptted||interrupted
+interupted||interrupted
+interupt||interrupt
+intial||initial
+intialisation||initialisation
+intialised||initialised
+intialise||initialise
+intialization||initialization
+intialized||initialized
+intialize||initialize
+intregral||integral
+intrerrupt||interrupt
+intrrupt||interrupt
+intterrupt||interrupt
+intuative||intuitive
+inavlid||invalid
+invaid||invalid
+invaild||invalid
+invailid||invalid
+invald||invalid
+invalde||invalid
+invalide||invalid
+invalidiate||invalidate
+invalud||invalid
+invididual||individual
+invokation||invocation
+invokations||invocations
+ireelevant||irrelevant
+irrelevent||irrelevant
+isnt||isn't
+isssue||issue
+iternations||iterations
+itertation||iteration
+itslef||itself
+jave||java
+jeffies||jiffies
+juse||just
+jus||just
+kown||known
+langage||language
+langauage||language
+langauge||language
+langugage||language
+lauch||launch
+layed||laid
+legnth||length
+leightweight||lightweight
+lengh||length
+lenght||length
+lenth||length
+lesstiff||lesstif
+libaries||libraries
+libary||library
+librairies||libraries
+libraris||libraries
+licenceing||licencing
+loggging||logging
+loggin||login
+logile||logfile
+loobpack||loopback
+loosing||losing
+losted||lost
+machinary||machinery
+maibox||mailbox
+maintainance||maintenance
+maintainence||maintenance
+maintan||maintain
+makeing||making
+mailformed||malformed
+malplaced||misplaced
+malplace||misplace
+managable||manageable
+managment||management
+mangement||management
+manoeuvering||maneuvering
+manufaucturing||manufacturing
+mappping||mapping
+matchs||matches
+mathimatical||mathematical
+mathimatic||mathematic
+mathimatics||mathematics
+maximium||maximum
+maxium||maximum
+mechamism||mechanism
+meetign||meeting
+memeory||memory
+memmber||member
+memoery||memory
+ment||meant
+mergable||mergeable
+mesage||message
+messags||messages
+messgaes||messages
+messsage||message
+messsages||messages
+micropone||microphone
+microprocesspr||microprocessor
+migrateable||migratable
+milliseonds||milliseconds
+minium||minimum
+minimam||minimum
+miniumum||minimum
+minumum||minimum
+misalinged||misaligned
+miscelleneous||miscellaneous
+misformed||malformed
+mispelled||misspelled
+mispelt||misspelt
+mising||missing
+mismactch||mismatch
+missmanaged||mismanaged
+missmatch||mismatch
+miximum||maximum
+mmnemonic||mnemonic
+mnay||many
+modfiy||modify
+modulues||modules
+momery||memory
+memomry||memory
+monochorome||monochrome
+monochromo||monochrome
+monocrome||monochrome
+mopdule||module
+mroe||more
+mulitplied||multiplied
+multidimensionnal||multidimensional
+multple||multiple
+mumber||number
+muticast||multicast
+mutilcast||multicast
+mutiple||multiple
+mutli||multi
+nams||names
+navagating||navigating
+nead||need
+neccecary||necessary
+neccesary||necessary
+neccessary||necessary
+necesary||necessary
+neded||needed
+negaive||negative
+negoitation||negotiation
+negotation||negotiation
+nerver||never
+nescessary||necessary
+nessessary||necessary
+noticable||noticeable
+notications||notifications
+notifed||notified
+numebr||number
+numner||number
+obtaion||obtain
+obusing||abusing
+occassionally||occasionally
+occationally||occasionally
+occurance||occurrence
+occurances||occurrences
+occured||occurred
+occurence||occurrence
+occure||occurred
+occured||occurred
+occuring||occurring
+offser||offset
+offet||offset
+offloded||offloaded
+omited||omitted
+omiting||omitting
+omitt||omit
+ommiting||omitting
+ommitted||omitted
+onself||oneself
+ony||only
+operatione||operation
+opertaions||operations
+optionnal||optional
+optmizations||optimizations
+orientatied||orientated
+orientied||oriented
+orignal||original
+originial||original
+otherise||otherwise
+ouput||output
+oustanding||outstanding
+overaall||overall
+overhread||overhead
+overlaping||overlapping
+overide||override
+overrided||overridden
+overriden||overridden
+overun||overrun
+overwritting||overwriting
+overwriten||overwritten
+pacakge||package
+pachage||package
+packacge||package
+packege||package
+packge||package
+packtes||packets
+pakage||package
+paket||packet
+pallette||palette
+paln||plan
+paramameters||parameters
+paramaters||parameters
+paramater||parameter
+parametes||parameters
+parametised||parametrised
+paramter||parameter
+paramters||parameters
+parmaters||parameters
+particuarly||particularly
+particularily||particularly
+partion||partition
+partions||partitions
+partiton||partition
+pased||passed
+passin||passing
+pathes||paths
+pecularities||peculiarities
+peformance||performance
+peforming||performing
+peice||piece
+pendantic||pedantic
+peprocessor||preprocessor
+perfoming||performing
+peripherial||peripheral
+permissons||permissions
+peroid||period
+persistance||persistence
+persistant||persistent
+phoneticly||phonetically
+plalform||platform
+platfoem||platform
+platfrom||platform
+plattform||platform
+pleaes||please
+ploting||plotting
+plugable||pluggable
+poinnter||pointer
+pointeur||pointer
+poiter||pointer
+posible||possible
+positon||position
+possibilites||possibilities
+powerfull||powerful
+pramater||parameter
+preamle||preamble
+preample||preamble
+preapre||prepare
+preceeded||preceded
+preceeding||preceding
+preceed||precede
+precendence||precedence
+precission||precision
+preemptable||preemptible
+prefered||preferred
+prefferably||preferably
+premption||preemption
+prepaired||prepared
+preperation||preparation
+pressre||pressure
+primative||primitive
+princliple||principle
+priorty||priority
+privilaged||privileged
+privilage||privilege
+priviledge||privilege
+priviledges||privileges
+probaly||probably
+procceed||proceed
+proccesors||processors
+procesed||processed
+proces||process
+procesing||processing
+processessing||processing
+processess||processes
+processpr||processor
+processsed||processed
+processsing||processing
+procteted||protected
+prodecure||procedure
+progams||programs
+progess||progress
+programers||programmers
+programm||program
+programms||programs
+progresss||progress
+promiscous||promiscuous
+promps||prompts
+pronnounced||pronounced
+prononciation||pronunciation
+pronouce||pronounce
+pronunce||pronounce
+propery||property
+propigate||propagate
+propigation||propagation
+propogate||propagate
+prosess||process
+protable||portable
+protcol||protocol
+protecion||protection
+protocoll||protocol
+promixity||proximity
+psudo||pseudo
+psuedo||pseudo
+psychadelic||psychedelic
+pwoer||power
+queing||queuing
+quering||querying
+randomally||randomly
+raoming||roaming
+reasearcher||researcher
+reasearchers||researchers
+reasearch||research
+recepient||recipient
+receving||receiving
+recieved||received
+recieve||receive
+reciever||receiver
+recieves||receives
+recogniced||recognised
+recognizeable||recognizable
+recommanded||recommended
+recyle||recycle
+redircet||redirect
+redirectrion||redirection
+redundacy||redundancy
+reename||rename
+refcounf||refcount
+refence||reference
+refered||referred
+referenace||reference
+refering||referring
+refernces||references
+refernnce||reference
+refrence||reference
+registed||registered
+registerd||registered
+registeration||registration
+registeresd||registered
+registerred||registered
+registes||registers
+registraration||registration
+regsiter||register
+regster||register
+regualar||regular
+reguator||regulator
+regulamentations||regulations
+reigstration||registration
+releated||related
+relevent||relevant
+reloade||reload
+remoote||remote
+remore||remote
+removeable||removable
+repectively||respectively
+replacable||replaceable
+replacments||replacements
+replys||replies
+reponse||response
+representaion||representation
+reqeust||request
+requestied||requested
+requiere||require
+requirment||requirement
+requred||required
+requried||required
+requst||request
+reregisteration||reregistration
+reseting||resetting
+reseved||reserved
+reseverd||reserved
+resizeable||resizable
+resouce||resource
+resouces||resources
+resoures||resources
+responce||response
+resrouce||resource
+ressizes||resizes
+ressource||resource
+ressources||resources
+restesting||retesting
+resumbmitting||resubmitting
+retransmited||retransmitted
+retreived||retrieved
+retreive||retrieve
+retreiving||retrieving
+retrive||retrieve
+retuned||returned
+reudce||reduce
+reuest||request
+reuqest||request
+reutnred||returned
+revsion||revision
+rmeoved||removed
+rmeove||remove
+rmeoves||removes
+rountine||routine
+routins||routines
+rquest||request
+runing||running
+runned||ran
+runnning||running
+runtine||runtime
+sacrifying||sacrificing
+safly||safely
+safty||safety
+savable||saveable
+scaleing||scaling
+scaned||scanned
+scaning||scanning
+scarch||search
+seach||search
+searchs||searches
+secquence||sequence
+secund||second
+segement||segment
+semaphone||semaphore
+senario||scenario
+senarios||scenarios
+sentivite||sensitive
+separatly||separately
+sepcify||specify
+sepc||spec
+seperated||separated
+seperately||separately
+seperate||separate
+seperatly||separately
+seperator||separator
+sepperate||separate
+seqeunce||sequence
+seqeuncer||sequencer
+seqeuencer||sequencer
+sequece||sequence
+sequencial||sequential
+serveral||several
+servive||service
+setts||sets
+settting||setting
+shotdown||shutdown
+shoud||should
+shouldnt||shouldn't
+shoule||should
+shrinked||shrunk
+siginificantly||significantly
+signabl||signal
+similary||similarly
+similiar||similar
+simlar||similar
+simliar||similar
+simpified||simplified
+singaled||signaled
+singal||signal
+singed||signed
+sleeped||slept
+softwares||software
+speach||speech
+specfic||specific
+specfield||specified
+speciefied||specified
+specifc||specific
+specifed||specified
+specificatin||specification
+specificaton||specification
+specifing||specifying
+specifiying||specifying
+speficied||specified
+speicify||specify
+speling||spelling
+spinlcok||spinlock
+spinock||spinlock
+splitted||split
+spreaded||spread
+spurrious||spurious
+sructure||structure
+stablilization||stabilization
+staically||statically
+staion||station
+standardss||standards
+standartization||standardization
+standart||standard
+standy||standby
+stardard||standard
+staticly||statically
+statuss||status
+stoped||stopped
+stoping||stopping
+stoppped||stopped
+straming||streaming
+struc||struct
+structres||structures
+stuct||struct
+strucuture||structure
+stucture||structure
+sturcture||structure
+subdirectoires||subdirectories
+suble||subtle
+substract||subtract
+submition||submission
+suceed||succeed
+succesfully||successfully
+succesful||successful
+successed||succeeded
+successfull||successful
+successfuly||successfully
+sucessfully||successfully
+sucess||success
+superflous||superfluous
+superseeded||superseded
+suplied||supplied
+suported||supported
+suport||support
+supportet||supported
+suppored||supported
+supportin||supporting
+suppoted||supported
+suppported||supported
+suppport||support
+supress||suppress
+surpressed||suppressed
+surpresses||suppresses
+susbsystem||subsystem
+suspeneded||suspended
+suspsend||suspend
+suspicously||suspiciously
+swaping||swapping
+switchs||switches
+swith||switch
+swithable||switchable
+swithc||switch
+swithced||switched
+swithcing||switching
+swithed||switched
+swithing||switching
+swtich||switch
+symetric||symmetric
+synax||syntax
+synchonized||synchronized
+synchronuously||synchronously
+syncronize||synchronize
+syncronized||synchronized
+syncronizing||synchronizing
+syncronus||synchronous
+syste||system
+sytem||system
+sythesis||synthesis
+taht||that
+tansmit||transmit
+targetted||targeted
+targetting||targeting
+taskelt||tasklet
+teh||the
+temorary||temporary
+temproarily||temporarily
+thead||thread
+therfore||therefore
+thier||their
+threds||threads
+threshhold||threshold
+thresold||threshold
+throught||through
+troughput||throughput
+thses||these
+tiggers||triggers
+tiggered||triggered
+tipically||typically
+timeing||timing
+timout||timeout
+tmis||this
+toogle||toggle
+torerable||tolerable
+traking||tracking
+tramsmitted||transmitted
+tramsmit||transmit
+tranasction||transaction
+tranfer||transfer
+transcevier||transceiver
+transciever||transceiver
+transferd||transferred
+transfered||transferred
+transfering||transferring
+transision||transition
+transmittd||transmitted
+transormed||transformed
+trasfer||transfer
+trasmission||transmission
+treshold||threshold
+trigerred||triggered
+trigerring||triggering
+trun||turn
+tunning||tuning
+ture||true
+tyep||type
+udpate||update
+uesd||used
+uknown||unknown
+usupported||unsupported
+uncommited||uncommitted
+unconditionaly||unconditionally
+underun||underrun
+unecessary||unnecessary
+unexecpted||unexpected
+unexepected||unexpected
+unexpcted||unexpected
+unexpectd||unexpected
+unexpeted||unexpected
+unexpexted||unexpected
+unfortunatelly||unfortunately
+unifiy||unify
+uniterrupted||uninterrupted
+unintialized||uninitialized
+unitialized||uninitialized
+unkmown||unknown
+unknonw||unknown
+unknow||unknown
+unkown||unknown
+unamed||unnamed
+uneeded||unneeded
+unneded||unneeded
+unneccecary||unnecessary
+unneccesary||unnecessary
+unneccessary||unnecessary
+unnecesary||unnecessary
+unneedingly||unnecessarily
+unnsupported||unsupported
+unmached||unmatched
+unregester||unregister
+unresgister||unregister
+unrgesiter||unregister
+unsinged||unsigned
+unstabel||unstable
+unsolicitied||unsolicited
+unsuccessfull||unsuccessful
+unsuported||unsupported
+untill||until
+unuseful||useless
+unvalid||invalid
+upate||update
+upsupported||unsupported
+usefule||useful
+usefull||useful
+usege||usage
+usera||users
+usualy||usually
+usupported||unsupported
+utilites||utilities
+utillities||utilities
+utilties||utilities
+utiltity||utility
+utitity||utility
+utitlty||utility
+vaid||valid
+vaild||valid
+valide||valid
+variantions||variations
+varible||variable
+varient||variant
+vaule||value
+verbse||verbose
+verisons||versions
+verison||version
+verson||version
+vicefersa||vice-versa
+virtal||virtual
+virtaul||virtual
+virtiual||virtual
+visiters||visitors
+vitual||virtual
+vunerable||vulnerable
+wakeus||wakeups
+wathdog||watchdog
+wating||waiting
+wiat||wait
+wether||whether
+whataver||whatever
+whcih||which
+whenver||whenever
+wheter||whether
+whe||when
+wierd||weird
+wiil||will
+wirte||write
+withing||within
+wnat||want
+workarould||workaround
+writeing||writing
+writting||writing
+zombe||zombie
+zomebie||zombie
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
