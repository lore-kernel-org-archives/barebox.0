Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f41.google.com ([209.85.220.41])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjWev-0007Ej-3K
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 15:59:14 +0000
Received: by mail-pa0-f41.google.com with SMTP id lf10so4542480pab.0
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 07:58:47 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 21 Nov 2013 15:58:47 +0000
Message-ID: <CAFJTrDu2ANbbzn7hcJo+dEFG7TVUga1QcpLDuOfBB2Krv9c+3Q@mail.gmail.com>
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
Subject: [PATCH] Added -j option to kwboot to allow just sending the boot
 preamble
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

Hi,

Apologies if there are any mistake in the following, this is the first
time I have used git to provide a patch (I generally use different SCM
software) but I hope everything is correct.

This patch provides an additional feature to the kwboot script,
specifically adding the -j option to send the boot preamble then exit
so that another Xmodem program can send a boot image.

This has a number of uses where special features are needed in the
xmodem software, in my case this is specifically because the
transmission is going through a non transparent serial switch which
causes the Xmodem data to become damaged (though is fine for normal
serial communications and the boot preamble), however I have software
to work around this but that software cannot be used with the built in
kwboot Xmodem software and has it's own Xmodem capability. I would not
remotely expect kwboot to cover this or any other edge case as it is
very nice having the code simple and readable but this feature
provides a good compromise to allow the feature to be provided
externally.

Patch follows (appologies for the bogus time stamp, the real time
clock in my computer is acting up):

From 7b4c084251897f8bd571890d4a877680ad7debdb Mon Sep 17 00:00:00 2001
From: Matthew Minter <matthew_minter@xyratex.com>
Date: Thu, 21 Nov 2013 15:43:18 +0000
Subject: [PATCH] Added -j option to kwboot to allow just sending the
boot preamble

---
 scripts/kwboot.c |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index 33c94b3..e62c242 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -587,13 +587,15 @@ static void
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
@@ -626,7 +628,7 @@ main(int argc, char **argv)
     kwboot_verbose = isatty(STDOUT_FILENO);

     do {
-        int c = getopt(argc, argv, "hb:dtB:D:");
+        int c = getopt(argc, argv, "jhb:dtB:D:");
         if (c < 0)
             break;

@@ -636,6 +638,10 @@ main(int argc, char **argv)
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
1.7.1




On 21 November 2013 14:01, Thomas Petazzoni
<thomas.petazzoni@free-electrons.com> wrote:
> Dear Matthew Minter,
>
> Cc'ing Sebastian Hesselbarth, who has also worked on kwboot.
>
> On Tue, 19 Nov 2013 16:48:25 +0000, Matthew Minter wrote:
>
>> I was not sure this is the correct list to send this to, however when
>> using the included kwboot utility to bootstrap a Marvell Armada XP
>> board I quickly noticed it was missing a useful feature, the ability
>> to send the boot preamble without sending a boot image afterwards.
>> This was useful to me as my configuration required an xmodem program
>> with special features, not available in the useful but very light
>> included one.
>>
>> As such I have written a patch which adds the -j option. This allows
>> behaviour similar to the -b option except kwboot exits just before the
>> actual xmodem transfer, allowing another xmodem program to take over
>> and send the boot file.
>>
>> I think this may be of use to others bootstrapping Armada XP based
>> systems so attach this patch to the end of my post.
>
> The feature looks ok to me. Can you submit a proper patch (i.e a git
> patch, with description and Signed-off-by line) ?
>
> Just curious, which features does your xmodem program provides that
> this light tool doesn't? It might be interesting to know that, just to
> see what use cases kwboot isn't covering.
>
> Thanks!
>
> Thomas
>
>> --- barebox/scripts/kwboot.c.old    2013-11-19 16:37:04.717255752
>> +0000 +++ barebox/scripts/kwboot.c    2013-11-19 16:38:36.573351680
>> +0000 @@ -587,13 +587,15 @@
>>  kwboot_usage(FILE *stream, char *progname)
>>  {
>>      fprintf(stream,
>> -        "Usage: %s [-d | -b <image> | -D <image> ] [ -t ] [-B <baud>
>> ] <TTY>\n",
>> +        "Usage: %s [-d | -b <image> | -D <image> | -j ] [ -t ] [-B
>> <baud> ] <TTY>\n",
>>          progname);
>>      fprintf(stream, "\n");
>>      fprintf(stream,
>>          "  -b <image>: boot <image> with preamble (Kirkwood, Armada
>> 370/XP)\n");
>>      fprintf(stream,
>>          "  -D <image>: boot <image> without preamble (Dove)\n");
>> +        fprintf(stream,
>> +                "  -j: just send the boot preamble but do not send
>> any image\n");
>>      fprintf(stream, "  -d: enter debug mode\n");
>>      fprintf(stream, "\n");
>>      fprintf(stream, "  -t: mini terminal\n");
>> @@ -626,7 +628,7 @@
>>      kwboot_verbose = isatty(STDOUT_FILENO);
>>
>>      do {
>> -        int c = getopt(argc, argv, "hb:dtB:D:");
>> +        int c = getopt(argc, argv, "jhb:dtB:D:");
>>          if (c < 0)
>>              break;
>>
>> @@ -636,6 +638,10 @@
>>              imgpath = optarg;
>>              break;
>>
>> +        case 'j':
>> +            bootmsg = kwboot_msg_boot;
>> +            break;
>> +
>>          case 'D':
>>              bootmsg = NULL;
>>              imgpath = optarg;
>>
>
>
>
> --
> Thomas Petazzoni, CTO, Free Electrons
> Embedded Linux, Kernel and Android engineering
> http://free-electrons.com

-- 


------------------------------
For additional information including the registered office and the treatment of Xyratex confidential information please visit www.xyratex.com

------------------------------

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
