Delivery-date: Mon, 06 Dec 2021 09:33:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mu9RJ-0007hi-Is
	for lore@lore.pengutronix.de; Mon, 06 Dec 2021 09:33:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mu9RI-0006Ko-Bk
	for lore@pengutronix.de; Mon, 06 Dec 2021 09:33:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dMlORQUvL2fn2065+c4gNcTDt474OpO3EcAhwI44d1A=; b=PobKrHB3SVHmBzZoMXLaHHpNMa
	wqOf7/zOJq/npPIWQPz125Sf0bhqfuGvcxrRNdmnZJw/LPU8BXbjxY36CL5Tn8LTiOT8VUOI8gS4X
	oG9vWxDqXIOJRvAwvuCSrY0t+fvIk2gSX7OpFJ4sLC9bXaS1NooEFyM+bcWg9XokF/PsuwUH5vvEQ
	gbns1e4Utx6tI6Q39QbWNhDi+uRlHxLb8Ui/loECxLUaEtZB39tp/CoMiVGqEecm0bgNs+R+2+2Rs
	TaD33FAzh9QM9SZhpuGNGwoT80/iMoWGaGGaHShocYSUYNGc/r+DSlkOvFfe60Z31T8yXNH/bq0PP
	5YnVpbZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mu9PV-002wIJ-SE; Mon, 06 Dec 2021 08:31:46 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mu9OZ-002vgj-Uu
 for barebox@lists.infradead.org; Mon, 06 Dec 2021 08:30:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id AC71F40266;
 Mon,  6 Dec 2021 09:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1638779438;
 bh=lB3X8e45cnFGD51kPS5HiQ/2rEoiCZd3VCrpwpNs7Ao=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dXCJ03CfTsjPO5c6Kfe86qPW/t5tYXbG7wDIguPU0UvYXO4ovdzWAb26/WLKwylBS
 GnCaalGQmlZ2JEP0N6pS9VyBg0MBZ67JZsy4opz/wvr7+7iw4sdFp+vQBuDWvwabsM
 27S9KAXZAOk8Gzg0u0cj4U8xo8lzJwgtPQx+NdtwfT6yeCQZ+W9rpqorrrFlWRKiYY
 iKBSX2JvqyA++G3yEMoWv6zH/U7g/Da2qTJHBqx78YdYRZOu5Zt+Dqg13zU9r7v8ql
 banTkY4LRuVgcyu7aAkgi8OqwkJ2Lvm/F64VHHY/v/TfXZ+HsRKyMF8fIcjXXuI7ui
 /xEfjynmGhluw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uj9DEI-udZRc; Mon,  6 Dec 2021 09:30:38 +0100 (CET)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 625B0400D4;
 Mon,  6 Dec 2021 09:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1638779438;
 bh=lB3X8e45cnFGD51kPS5HiQ/2rEoiCZd3VCrpwpNs7Ao=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dXCJ03CfTsjPO5c6Kfe86qPW/t5tYXbG7wDIguPU0UvYXO4ovdzWAb26/WLKwylBS
 GnCaalGQmlZ2JEP0N6pS9VyBg0MBZ67JZsy4opz/wvr7+7iw4sdFp+vQBuDWvwabsM
 27S9KAXZAOk8Gzg0u0cj4U8xo8lzJwgtPQx+NdtwfT6yeCQZ+W9rpqorrrFlWRKiYY
 iKBSX2JvqyA++G3yEMoWv6zH/U7g/Da2qTJHBqx78YdYRZOu5Zt+Dqg13zU9r7v8ql
 banTkY4LRuVgcyu7aAkgi8OqwkJ2Lvm/F64VHHY/v/TfXZ+HsRKyMF8fIcjXXuI7ui
 /xEfjynmGhluw==
MIME-Version: 1.0
Date: Mon, 06 Dec 2021 09:30:38 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Organization: Inside M2M GmbH
In-Reply-To: <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
Message-ID: <bfa5b77b1367dec7d64bba249c24b441@inside-m2m.de>
X-Sender: konstantin.kletschke@inside-m2m.de
User-Agent: Roundcube Webmail/1.3.0 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_003048_363218_F0914898 
X-CRM114-Status: GOOD (  14.05  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Dear Trent,

thank you so much for this comprehensive clarification.

On 2021-12-03 18:52, Trent Piepho wrote:

> You should add a node of "barebox,state" to the *Barebox* device tree.

I will try to prepare a proper device tree.
It was this special tiny detail:

> must have state node ALSO in the Linux device tree.  But you do not
> need to add it manually!  Barebox will automatically inject the state

What I was not aware of, yet! I think I got the point now.

> For this to work, you need to have Barebox give the kernel the Linux
> device tree when booting.  This is the normal way to boot now.  All
> current docs tell you to do this.  There was a much older style where
> the dtb was appended to the kernel image and the kernel found it
> itself without involving the bootloader.  I assume this will not work,
> but I think Barebox state did not exist when I last booted a system
> this way, so I haven't tried.

Yes, no problem, I stumpled upon the combined image+dtb thingy once in 
our
but the new stuff I am working upon is barebox passing the dtb to the 
kernel.

Thanks also for explaining the possibilities and requirements,
I will figure a nice way to do this on my Beaglebone Black now.

Kind Regards
Konstantin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

