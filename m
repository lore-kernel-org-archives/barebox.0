Delivery-date: Tue, 18 Jan 2022 18:02:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9rsK-005kjQ-M7
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 18:02:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9rsJ-00016p-8J
	for lore@pengutronix.de; Tue, 18 Jan 2022 18:02:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTiOExg8XBoxiWxZLDvha6Y9IcYE4YyCxbrRiCV8QUE=; b=wx9wHfuWtyUuin
	BGWudjnmdczoaN+gn7leQ5ehYmWdmqDwzeCzL58AWkxIBhl0MScC0iYTwnZStXiAxijrOHyDabgxN
	BJpBLlWFJHajmZwXvO/QUpVjM3Ve9eVg5o1CP/2dtNe7xfShhmbE1UpP80ZrzOjPZl/pkuUcKldGN
	KSMQ/eOzuPfuya1dnbfjLP8/iY8GkDhYiVVudecvtS+aWjZBi7pAvvTzI3Sa+Ld+7VbivI7AqRSw/
	MBR5+1KWFTIl+yF2BVHKzQqEPL9jfVIyEm0Afbl0/tEihgtNZw6+Juyljo3jP9NlFZDj/otxJuj0Z
	4A45wA/SKBkyEn08qx8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9rqk-002LfQ-4Q; Tue, 18 Jan 2022 17:00:50 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9rqe-002Let-Nh
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 17:00:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 0125F398EFD
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 18:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642525238;
 bh=NrZxwBik1ffZjQ7av/4pz3lrKMnSn/svXL635vZju0o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=XDADVuhl2Yg1L6PNl/0T9oMYOnpa9/gHmYTwYyGJKp1uHR1iQX356aCz4Tk4gWk48
 nvwrmg6KFkzYYoqnj8bRRtLLfUSv1vViGwB1/IJF8trWsNpwRohE+Szy5H8o6Rdvju
 76wf3vBN7LwEYv4zZsRXV23hg0hfEpSH+hI0V27E=
Received: from fx306 (localhost [127.0.0.1]) by fx306.security-mail.net
 (Postfix) with ESMTP id 974E9399558; Tue, 18 Jan 2022 18:00:37 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx306.security-mail.net (Postfix) with ESMTPS id 07C3F399520; Tue, 18 Jan
 2022 18:00:37 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id DCDB927E0341; Tue, 18 Jan 2022
 18:00:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id C696E27E03AE; Tue, 18 Jan 2022 18:00:36 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 VjU4ber81LXD; Tue, 18 Jan 2022 18:00:36 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id B6EAB27E0341; Tue, 18 Jan 2022
 18:00:36 +0100 (CET)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <17dbc.61e6f235.62b8.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C696E27E03AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642525236;
 bh=dZmdFrtbg7o7ehMEaXpuJa8Mm7Fjc05nu1y9ME/o7Do=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=NtG7GOXvhA3wjKFz5O27vzpCdVIOy/o6r6Qqf6taOsPUVp5DzYl6BwGnIby3XDksI
 tjZSYtRgXvIcZKtE0z9j6gcOePFcx900CVF8bQc5wCFDP3rH5bzDk6s0Bvk7bRD4kc
 7hpcjXmzJwwUy6JkE47QEcGMhB6zztsnv0nBMMfY=
Date: Tue, 18 Jan 2022 18:00:35 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220118170035.GF29876@tellis.lin.mbt.kalray.eu>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
 <20220117230235.13549-5-jmaselbas@kalray.eu>
 <CAMHeXxOQXTTd=u8M9fbtQeB6OAFnC+1t=Sx=CtwzocNc=HaDMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxOQXTTd=u8M9fbtQeB6OAFnC+1t=Sx=CtwzocNc=HaDMg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_090044_965349_FA2CD76D 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/5] logo: Enable image format selection for the logo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 17, 2022 at 03:28:17PM -0800, Trent Piepho wrote:
> On Mon, Jan 17, 2022 at 3:03 PM Jules Maselbas <jmaselbas@kalray.eu> wrote:
> >
> > +choice
> > +       prompt "Logo image encoding format to be used"
> > +       default BAREBOX_LOGO_PNG
> > +
> > +config BAREBOX_LOGO_PNG
> > +       bool "png"
> > +       select PNG
> > +       help
> > +         Encode logo with the PNG image format
> > +
> > +config BAREBOX_LOGO_BMP
> > +       bool "bmp"
> > +       select BMP
> > +       help
> > +         Encode logo with the BMP image format
> 
> You might say why one might want one format or ther other.  What's the
> point of adding bmp support?
Yes that's a good point, I'll add a short explaination of pros/cons.
The only reason of adding bmp is that is it a supported format in
lib/gui/ that's all... 


> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

