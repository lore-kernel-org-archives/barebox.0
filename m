Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f47.google.com ([209.85.220.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vioc2-0004Mo-IK
 for barebox@lists.infradead.org; Tue, 19 Nov 2013 16:57:19 +0000
Received: by mail-pa0-f47.google.com with SMTP id kq14so4011501pab.6
 for <barebox@lists.infradead.org>; Tue, 19 Nov 2013 08:56:52 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 19 Nov 2013 16:48:25 +0000
Message-ID: <CAFJTrDt+3KfH17ndSMvBVin9WzJHTWzG6n2uH+6Ed6_T4k32Uw@mail.gmail.com>
From: Matthew Minter <matthew_minter@xyratex.com>
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
Subject: kwboot Preamble only feature
To: barebox@lists.infradead.org

Hi everyone,

I was not sure this is the correct list to send this to, however when
using the included kwboot utility to bootstrap a Marvell Armada XP
board I quickly noticed it was missing a useful feature, the ability
to send the boot preamble without sending a boot image afterwards.
This was useful to me as my configuration required an xmodem program
with special features, not available in the useful but very light
included one.

As such I have written a patch which adds the -j option. This allows
behaviour similar to the -b option except kwboot exits just before the
actual xmodem transfer, allowing another xmodem program to take over
and send the boot file.

I think this may be of use to others bootstrapping Armada XP based
systems so attach this patch to the end of my post.

Many thanks,
Matthew

--- barebox/scripts/kwboot.c.old    2013-11-19 16:37:04.717255752 +0000
+++ barebox/scripts/kwboot.c    2013-11-19 16:38:36.573351680 +0000
@@ -587,13 +587,15 @@
 kwboot_usage(FILE *stream, char *progname)
 {
     fprintf(stream,
-        "Usage: %s [-d | -b <image> | -D <image> ] [ -t ] [-B <baud>
] <TTY>\n",
+        "Usage: %s [-d | -b <image> | -D <image> | -j ] [ -t ] [-B
<baud> ] <TTY>\n",
         progname);
     fprintf(stream, "\n");
     fprintf(stream,
         "  -b <image>: boot <image> with preamble (Kirkwood, Armada
370/XP)\n");
     fprintf(stream,
         "  -D <image>: boot <image> without preamble (Dove)\n");
+        fprintf(stream,
+                "  -j: just send the boot preamble but do not send
any image\n");
     fprintf(stream, "  -d: enter debug mode\n");
     fprintf(stream, "\n");
     fprintf(stream, "  -t: mini terminal\n");
@@ -626,7 +628,7 @@
     kwboot_verbose = isatty(STDOUT_FILENO);

     do {
-        int c = getopt(argc, argv, "hb:dtB:D:");
+        int c = getopt(argc, argv, "jhb:dtB:D:");
         if (c < 0)
             break;

@@ -636,6 +638,10 @@
             imgpath = optarg;
             break;

+        case 'j':
+            bootmsg = kwboot_msg_boot;
+            break;
+
         case 'D':
             bootmsg = NULL;
             imgpath = optarg;

-- 


------------------------------
For additional information including the registered office and the treatment of Xyratex confidential information please visit www.xyratex.com

------------------------------

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
