Delivery-date: Thu, 07 Oct 2021 11:50:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYQ3B-0005Wt-2d
	for lore@lore.pengutronix.de; Thu, 07 Oct 2021 11:50:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYQ3A-0000s0-4d
	for lore@pengutronix.de; Thu, 07 Oct 2021 11:50:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRJSBX9bl873tkPm7P2wM3/ABJY7CliWJjGYXDu3xqY=; b=AJEG6VhUE1frHf
	3ZcXiEaRXMBagM1NpTgQGZgauxufNFoZ7IVaILzDzo6ATc0yLzlIENzNA8QZYgFtmzE66DHIFySIn
	9vHz0L3JSdy4cRqDVhEFI8NbNjH5g3cUa08Hb9/R86q0GeEX+Wz5TYTJLUcPYxDQ19xoUCFrDzqWa
	7HTffw/NNZLgWS4W+iMlmSMCb5dd/lMwDvlWHxPuQofhpEGNpaWF6h3Ey3JxgcirWmJRR/1iph7fj
	HKIr1IpvwKGKC5e2ivYtJjn8xQDcuu406UUfyyn3QLuPo4CChqjTFgj1lzQFx0JkHFVW15GzzAwf2
	huYzFXWxI2ncfDxhFODA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYQ1h-00Gkny-18; Thu, 07 Oct 2021 09:49:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYQ1c-00GkmH-71
 for barebox@bombadil.infradead.org; Thu, 07 Oct 2021 09:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=p5KXjRrkidFwKvUgFtor5tXHNvQLBL2hQ1Pf31uXonE=; b=Xz72vdcxsrG3wESJn0J397n+Rh
 4NUm5VK+ss2bhhdUO73DM2mER97bANaSayT5GogMz4IZtaoEmbQnbe/QERciZVtbkGCVqT4gdtwTP
 kIwVsBKDQYsqVxTjm7/GOziE9ktP/jHoixnVkxyC8WGzPDW5zjV5cfE38QeseNQlIkLoVqRI3IdSI
 pvUFeFLN8PS1rO0dD15ZCf8abhoiRrMo1QMZYo1gLjBzhcrAmyRu+Z/kusac8x2I1CF8hwpzY5cUJ
 zJXMCdA1Dj5pgtQsNC3ZyzTM4k2SEi7M8XmkH+Uw41vSnHIsQQfifwuWMj/tMyxrRhsYgHr6fEJF0
 q6FpE7Bg==;
Received: from mxout.security-mail.net ([85.31.212.48]
 helo=fx304.security-mail.net)
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYQ1Y-008S7J-JS
 for barebox@lists.infradead.org; Thu, 07 Oct 2021 09:49:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx304.security-mail.net (Postfix) with ESMTP id 71CA262C7C
 for <barebox@lists.infradead.org>; Thu,  7 Oct 2021 11:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1633600142;
 bh=s30+uxwBcUpF8klw2WvbzS3SUi9K/c57ggIXUbqKBns=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=DGAOKXiRFDHEYiKzOaRnOCty+PN2fWSlrOobtPT5wBljeT3OGbsPnbyy+qqmFUsXb
 MBNs1yYAOFWeFM4p+Gq0Iw6irtf007RoEEmhLSjfSFZXTkxrxHY9//CPNvxIrukrWY
 X4fbDUBS5zKnjaGEzcyCHHCpM/TkKkqbWIwFMxFM=
Received: from fx304 (localhost [127.0.0.1]) by fx304.security-mail.net
 (Postfix) with ESMTP id 1A2A562C4F; Thu,  7 Oct 2021 11:49:02 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx304.security-mail.net (Postfix) with ESMTPS id B9EE262C3E; Thu,  7 Oct
 2021 11:49:01 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 9FE3F27E02D4; Thu,  7 Oct 2021
 11:49:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 8858827E0333; Thu,  7 Oct 2021 11:49:01 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 VEeJ-Dnmc9gB; Thu,  7 Oct 2021 11:49:01 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 778D827E02D4; Thu,  7 Oct 2021
 11:49:01 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <f945.615ec28d.b986e.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8858827E0333
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1633600141;
 bh=p5KXjRrkidFwKvUgFtor5tXHNvQLBL2hQ1Pf31uXonE=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=W82lSCrne2Q2vPQUvOCk9vbRxCGenu3V0S7noHAaJF3NT8mxxuw5V416ex0zsXyew
 Uxxj5wV2GsElXni9X42jr2JluFhmTLgSr/ffr3HrFz8vyvh3rwUnlZGDCbee/XjTxA
 jQO1V8/rE1zpVxzse2vV1nk3BtIFtQbxWKJqm7lk=
Date: Thu, 7 Oct 2021 11:49:00 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20211007094900.GI19809@tellis.lin.mbt.kalray.eu>
References: <20211006135844.7361b72436286f5accbde0ad@gmail.com>
 <7fd50051-7370-5e29-c68a-8ac2439d5f9e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fd50051-7370-5e29-c68a-8ac2439d5f9e@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211007_104912_765805_3E57F600 
X-CRM114-Status: GOOD (  11.87  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: inkscape 1.1.1 issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Wed, Oct 06, 2021 at 01:19:36PM +0200, Ahmad Fatoum wrote:
> Hello Antony,
> 
> On 06.10.21 12:58, Antony Pavlov wrote:
> > Hi!
> > 
> > I have just update inkscape from Debian repo.
> > It looks like inkscape-1.1.1 has new unexpected behaviour.
> 
> I ran into issues as well when going from 0.92.4 to 1.0.1.
> Instead of adding another quirk, maybe we should use something
> else for SVG to PNG that is actually stable.
> 
> Any suggestions?
Maybe using imagemagick's convert ?

How can I see the result of the current solution ?
> > 
> > During barebox sandbox build process I have faced with unexpected
> > inkscape dialog. Also the '--without-gui=' option is depricated.
> > See my build log
> > 
> > barebox$ make
> > ...
> > Warning: Option --without-gui= is deprecated
> > Unable to init server: Could not connect: Connection refused
> > Background RRGGBBAA: ffffff00
> > Area 0:0:3000:1500 exported to 640 x 320 pixels (20.48 dpi)
> >   LOGO.S   lib/logo/barebox-logo-w640.bblogo.S
> >   AS      lib/logo/barebox-logo-w640.bblogo.o
> >   AR      lib/logo/built-in.a
> >   AR      lib/built-in.a
> >   GEN     .version
> >   CHK     include/generated/compile.h
> >   UPD     include/generated/compile.h
> >   CC      common/version.o
> >   CC      common/imd-barebox.o
> >   AR      common/built-in.a
> >   LD      barebox
> >   SYSMAP  System.map
> >   OBJCOPY barebox.bin
> >   CHKFILESIZE barebox.bin
> >   LN      barebox-flash-image
> > antony@cinco:~/barebox$ dpkg -l | grep inkscape
> > ii  inkscape                                     1.1.1-2                                   amd64        vector-based drawing program
> > 
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

