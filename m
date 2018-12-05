Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUWyQ-0007RP-4L
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 13:12:19 +0000
Received: by mail-lf1-x144.google.com with SMTP id c16so14671983lfj.8
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 05:12:07 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Dec 2018 16:11:42 +0300
Message-Id: <20181205131144.31512-3-antonynpavlov@gmail.com>
In-Reply-To: <20181205131144.31512-1-antonynpavlov@gmail.com>
References: <20181205131144.31512-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/4] checkpatch.pl: check for common memset parameter issues
 against statements
To: barebox@lists.infradead.org

Based on these Linux kernel commits

> 09c00c73f053a905 checkpatch: warn about memset with swapped arguments
> 54e165cf32610ec9 checkpatch: check for common memset parameter issues against statments

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 4b9b9d06f3..d8a8e5004f 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2961,6 +2961,28 @@ sub process {
 			     "sizeof(& should be avoided\n" . $herecurr);
 		}
 
+# Check for misused memsets
+		if (defined $stat && $stat =~ /\bmemset\s*\((.*)\)/s) {
+			my $args = $1;
+
+			# Flatten any parentheses and braces
+			while ($args =~ s/\([^\(\)]*\)/10/s ||
+			       $args =~ s/\{[^\{\}]*\}/10/s ||
+			       $args =~ s/\[[^\[\]]*\]/10/s)
+			{
+			}
+			# Extract the simplified arguments.
+			my ($ms_addr, $ms_val, $ms_size) =
+						split(/\s*,\s*/, $args);
+			if ($ms_size =~ /^(0x|)0$/i) {
+				ERROR("MEMSET",
+				      "memset size is 3rd argument, not the second.\n" . $herecurr);
+			} elsif ($ms_size =~ /^(0x|)1$/i) {
+				WARN("MEMSET",
+				     "single byte memset is suspicious. Swapped 2nd/3rd argument?\n" . $herecurr);
+			}
+		}
+
 # check for new externs in .c files.
 		if ($realfile =~ /\.c$/ && defined $stat &&
 		    $stat =~ /^.\s*(?:extern\s+)?$Type\s+($Ident)(\s*)\(/s)
-- 
2.20.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
