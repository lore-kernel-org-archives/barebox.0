Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjUpR-0003kn-R1
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 14:01:58 +0000
Date: Thu, 21 Nov 2013 15:01:26 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20131121150126.3f294944@skate>
In-Reply-To: <CAFJTrDt+3KfH17ndSMvBVin9WzJHTWzG6n2uH+6Ed6_T4k32Uw@mail.gmail.com>
References: <CAFJTrDt+3KfH17ndSMvBVin9WzJHTWzG6n2uH+6Ed6_T4k32Uw@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: kwboot Preamble only feature
To: Matthew Minter <matthew_minter@xyratex.com>
Cc: barebox@lists.infradead.org

Dear Matthew Minter,

Cc'ing Sebastian Hesselbarth, who has also worked on kwboot.

On Tue, 19 Nov 2013 16:48:25 +0000, Matthew Minter wrote:

> I was not sure this is the correct list to send this to, however when
> using the included kwboot utility to bootstrap a Marvell Armada XP
> board I quickly noticed it was missing a useful feature, the ability
> to send the boot preamble without sending a boot image afterwards.
> This was useful to me as my configuration required an xmodem program
> with special features, not available in the useful but very light
> included one.
> 
> As such I have written a patch which adds the -j option. This allows
> behaviour similar to the -b option except kwboot exits just before the
> actual xmodem transfer, allowing another xmodem program to take over
> and send the boot file.
> 
> I think this may be of use to others bootstrapping Armada XP based
> systems so attach this patch to the end of my post.

The feature looks ok to me. Can you submit a proper patch (i.e a git
patch, with description and Signed-off-by line) ?

Just curious, which features does your xmodem program provides that
this light tool doesn't? It might be interesting to know that, just to
see what use cases kwboot isn't covering.

Thanks!

Thomas

> --- barebox/scripts/kwboot.c.old    2013-11-19 16:37:04.717255752
> +0000 +++ barebox/scripts/kwboot.c    2013-11-19 16:38:36.573351680
> +0000 @@ -587,13 +587,15 @@
>  kwboot_usage(FILE *stream, char *progname)
>  {
>      fprintf(stream,
> -        "Usage: %s [-d | -b <image> | -D <image> ] [ -t ] [-B <baud>
> ] <TTY>\n",
> +        "Usage: %s [-d | -b <image> | -D <image> | -j ] [ -t ] [-B
> <baud> ] <TTY>\n",
>          progname);
>      fprintf(stream, "\n");
>      fprintf(stream,
>          "  -b <image>: boot <image> with preamble (Kirkwood, Armada
> 370/XP)\n");
>      fprintf(stream,
>          "  -D <image>: boot <image> without preamble (Dove)\n");
> +        fprintf(stream,
> +                "  -j: just send the boot preamble but do not send
> any image\n");
>      fprintf(stream, "  -d: enter debug mode\n");
>      fprintf(stream, "\n");
>      fprintf(stream, "  -t: mini terminal\n");
> @@ -626,7 +628,7 @@
>      kwboot_verbose = isatty(STDOUT_FILENO);
> 
>      do {
> -        int c = getopt(argc, argv, "hb:dtB:D:");
> +        int c = getopt(argc, argv, "jhb:dtB:D:");
>          if (c < 0)
>              break;
> 
> @@ -636,6 +638,10 @@
>              imgpath = optarg;
>              break;
> 
> +        case 'j':
> +            bootmsg = kwboot_msg_boot;
> +            break;
> +
>          case 'D':
>              bootmsg = NULL;
>              imgpath = optarg;
> 



-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
