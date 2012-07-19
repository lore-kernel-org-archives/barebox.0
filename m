Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrsKu-0008WT-Pl
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:08:18 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 89F90FFA9FE
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 17:13:29 +0200 (CEST)
Date: Thu, 19 Jul 2012 17:08:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120719150832.GG22657@game.jcrosoft.org>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Compressed barebox image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:12 Thu 19 Jul     , Sascha Hauer wrote:
> The following series allows to create a self extracting barebox image.
> This is done by linking barebox twice, once for the actual binary, but
> without lowlevel initstuff and once for the lowlevel init stuff, the
> decompressor and the compressed image.
> 
> Using lzo compression the pcm038 image shrinks from 252k to 155k. The
> series has been tested on the pcm038 second stage, first stage NAND and
> first stage NOR and also on an i.MX53 LOCO board (also in thumb2 mode)
> 
> Using compressed images currently adds to the boot time, at least on
> my slower arm9 systems. Using the MMU during decompression would help,
> but this currently isn't implemented.
> 
> I think the preparation patches should be ready for merging. The last
> patch in this series adding compression support I am not that confident
> with. Currently I am not very happy with the Makefile changes which
> somehow look like bypassing the kbuild mechanism and handcrufting
> something that looks like kbuild. If someone has ideas how to improve
> this, let me know. Nevertheless I would be happy about Tested-by
> (and does-not-work-for) tags.
> 
> Sascha
> 
> ----------------------------------------------------------------
> Sascha Hauer (9):
>       lzo: Allow for static inlining
>       ARM lds: remove unused got
>       ARM: remove board linker script option
>       ARM: remove exception vectors from boards
>       ARM startup: calculate offset instead of runtime address
>       ARM ep93xx: Get rid of special handling in linker file
>       ARM boards: Use _text rather than TEXT_BASE
>       ARM: Separate assembler functions into their own section
>       Add compressed image support

can you push it on a git?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
