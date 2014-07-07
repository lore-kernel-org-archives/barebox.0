Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X42cR-0003cJ-D9
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:41:44 +0000
Received: from mail194.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0DCD3FF9C68
 for <barebox@lists.infradead.org>; Mon,  7 Jul 2014 08:41:18 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <alpine.LFD.2.11.1407061724590.20386@localhost>
Date: Mon, 7 Jul 2014 14:41:05 +0800
Message-Id: <318A52B2-7D3C-4FE8-8E79-0653271A6233@jcrosoft.com>
References: <alpine.LFD.2.11.1407061724590.20386@localhost>
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
Subject: Re: is it "crc" or "crc32"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


On Jul 7, 2014, at 5:27 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

> 
> 
>  the source file commands/crc.c has a very confusing tail end, which
> generates two partial entries for the sphinx docs:
> 
> BAREBOX_CMD_HELP_START(crc)
this is just the struct name
> BAREBOX_CMD_HELP_TEXT("Calculate a CRC32 checksum of a memory area.")
> BAREBOX_CMD_HELP_TEXT("")
> BAREBOX_CMD_HELP_TEXT("Options:")
> BAREBOX_CMD_HELP_OPT ("-f FILE", "Use file instead of memory.")
> #ifdef CONFIG_CMD_CRC_CMP
> BAREBOX_CMD_HELP_OPT ("-F FILE", "Use file to compare.")
> #endif
> BAREBOX_CMD_HELP_OPT ("-v CRC",  "Verify")
> BAREBOX_CMD_HELP_OPT ("-V FILE", "Verify with CRC read from FILE")
> BAREBOX_CMD_HELP_END
> 
> BAREBOX_CMD_START(crc32)   <-- ????
> 
>  the first command definition refers to "crc", but the second one
> refers to "crc32". is that correct? what does it mean?

its crc32
> 
> rday
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
