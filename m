Delivery-date: Wed, 08 Sep 2021 10:43:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNtAh-00068N-Nb
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 10:43:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mNtAg-0006zF-Rf
	for lore@pengutronix.de; Wed, 08 Sep 2021 10:43:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBG4W7Zmvt6ocgsFJk95i2hxxzYOhFj6Bz9cVTZhTcg=; b=qZ2SmaWF6EnsmK
	mVRySLc2/1oi29eGQ5lUkIyZl/R64i3/pcGwSsmKV9Pw2x4tXxRNHL5+6dZLbrnlqrpSHTkLLQwFn
	KZfhkcoADu+aAyAHh7+dTEwwdFw0O8mzYoij4rZJ9HIc5EgUY6QQruYO7qI2ZAY6hrAqhz5f509FC
	GdxW29qKtKOEzBv23/nrJxQtNmJrk0cJPetyaLP+VtDr3qhHvsfrn0PsV1TMFmzQF4EfedykK2EIN
	5wIZauHqcf6riLOHE98vkewuElc0DzWaZ/KIKP9MZd79NecyguTwIidIJmk4RiHc9fnDA0UV1BNFt
	mJ+Tc0ikTHhlq488Zllg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNt9B-006Bzf-HM; Wed, 08 Sep 2021 08:41:33 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNt97-006Bz2-2X
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 08:41:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 1B1F53995B1
 for <barebox@lists.infradead.org>; Wed,  8 Sep 2021 10:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631090485;
 bh=e/7S8tlM6Ed4HwwY+/4fG8ahZk2AeBvb7ykQc1Xu7k0=;
 h=Date:From:To:Subject:References:In-Reply-To;
 b=EaItAW8Q7FudPfTJ2mDuRSFXRemZDs5beZ+6HzJbxYNrBCJTkYoPRt8OySdO8M7od
 JoUHoRnwOmN79heDb1iqgHuvf+HyEp7Me5vbUuXW7PBNKBI2ew+lgt3vCttM0Y5vgX
 UKaEw9kCISROzlfv+XuYJJ/GqhFIekh96YAU0vzY=
Received: from fx306 (localhost [127.0.0.1]) by fx306.security-mail.net
 (Postfix) with ESMTP id C88AE399489 for <barebox@lists.infradead.org>; Wed, 
 8 Sep 2021 10:41:24 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 79B683993D1 for
 <barebox@lists.infradead.org>; Wed,  8 Sep 2021 10:41:24 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 60FBF27E02EB for
 <barebox@lists.infradead.org>; Wed,  8 Sep 2021 10:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 4ABE327E02E5 for <barebox@lists.infradead.org>; Wed,
 8 Sep 2021 10:41:24 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 CdehwyZRhws9 for <barebox@lists.infradead.org>; Wed,  8 Sep 2021 10:41:24
 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 3C21427E02DA for
 <barebox@lists.infradead.org>; Wed,  8 Sep 2021 10:41:24 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <9e46.61387734.78810.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 4ABE327E02E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631090484;
 bh=eeCkQFMuDBs5WKA8vJfRMATbbypmZzpGStHy6vK/wic=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=GUpRBtbYfYZbqaFBW5keJ6SfijwpFe6ypYcl+JsCTHLIclBEjXbn8YRHMPoAJkvYo
 yTo4mR01YP/JgfXR7nU0AdOJuJFgItHIXtlRhsD/0DdidA0pHmz5eiPcb8d0L3oLsc
 7aR/Ok1vuF9Kt7cxLMDhh+xDwsyQzGjCKonHi9cQ=
Date: Wed, 8 Sep 2021 10:41:14 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Message-ID: <20210908084114.GA8023@tellis.lin.mbt.kalray.eu>
References: <20210907130131.26755-1-jmaselbas@kalray.eu>
 <20210907130131.26755-2-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210907130131.26755-2-jmaselbas@kalray.eu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_014129_443668_A690D494 
X-CRM114-Status: GOOD (  12.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: Typo fix in command example
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 07, 2021 at 03:01:31PM +0200, Jules Maselbas wrote:
> The ``make`` command is missing a closing angle bracket ``>``.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  Documentation/user/multi-image.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/multi-image.rst b/Documentation/user/multi-image.rst
> index 0a7bf91a55..374b79f91b 100644
> --- a/Documentation/user/multi-image.rst
> +++ b/Documentation/user/multi-image.rst
> @@ -51,4 +51,4 @@ generated a different entry point is selected using the ``-e`` option to ld.
>  The linker will throw away all unused entry points and only keep the functions
>  used by a particular entry point.
>  
> -The Multi Image PBL files can be disassembled with ``make <entry-function-name.pbl.S``
> +The Multi Image PBL files can be disassembled with ``make <entry-function-name>.pbl.S``
I think that should be: ``make images/<entry-function-name>.pbl.s`` as
mentioned in images/Makefile





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

