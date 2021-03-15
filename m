Delivery-date: Mon, 15 Mar 2021 12:06:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLl3C-0000lr-KJ
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 12:06:18 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLl3B-0005tf-HE
	for lore@pengutronix.de; Mon, 15 Mar 2021 12:06:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=adU8LUCDjyA8ZuXcCzMnIFFHDk59gbBDzgcqs1/yrkk=; b=RzMxP65TWfCzW2r/wGIxTfstm
	mI41fZ2PCkNM3Ipna9R+KwoLU+4VZMCZ027Qy7UV8EsGERmU9ayqCTF5o+tpQz0/Y2MGfIM1M/QV2
	7XbwSk5H2qXvOdjzvu5E1U5oTAYzfAtFizuTp8Px5e8G+xohaoBwTuDr03O1gS3eekFaP1RG/LlYC
	azApinB7roswLvEVtfTkGqJM4UNpFbWZMKomR8sTPavFrotETRjXino7IvavlBVDk4KzknZxknuT4
	rub0uYfbDWGpE8jCMya016d62sBMWHkTay3mmqasjfy1fU1tKuVD9xVk5ghAiyKIivy/LhuwI59Lo
	oarHIEHXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLl1J-00Fblg-AS; Mon, 15 Mar 2021 11:04:23 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLl0f-00Fbhh-52
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 11:03:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id AB7201A3919
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 11:03:39 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KMAHAY8V;
 Mon, 15 Mar 2021 11:03:39 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 6D7F01A3911;
 Mon, 15 Mar 2021 11:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 429BC27E02DD;
 Mon, 15 Mar 2021 12:03:39 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id NMCCw9_2RP72; Mon, 15 Mar 2021 12:03:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9911F27E0644;
 Mon, 15 Mar 2021 12:03:38 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9911F27E0644
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615806218;
 bh=aI8SSNXfkGRFmLESDIrbkyrtX+24++gWu7C98GC/X0s=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=bgoys5P8mbvi0+2P2qSt8FfZDTBoWd4Tenuzcu9Hm/yae6XO4BTjFFD9S+qF7s9FI
 VwPGaa5UswMDKqclaDVmUatdTIvgJMrgy8DyCGycCuh5syGtz3kz0X+FpVOm3whWr3
 SdV4UyWc9HKUjspFxUV0ECoOfvb5I8x9rXXqzDJg=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id EkM4NSfeH82b; Mon, 15 Mar 2021 12:03:38 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 86FDB27E02DD;
 Mon, 15 Mar 2021 12:03:38 +0100 (CET)
Date: Mon, 15 Mar 2021 12:03:33 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210315110333.GA20207@tellis.lin.mbt.kalray.eu>
References: <20210312152145.2761-1-jmaselbas@kalray.eu>
 <20210315093537.GR23724@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315093537.GR23724@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_110342_112414_86C49673 
X-CRM114-Status: GOOD (  14.16  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] reset: Remove WARN_ON when CONFIG_RESET_CONTROLLER=n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 15, 2021 at 10:35:37AM +0100, Sascha Hauer wrote:
> On Fri, Mar 12, 2021 at 04:21:45PM +0100, Jules Maselbas wrote:
> > Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> > ---
> > I am using dwc2 but my platform doesn't has CONFIG_RESET_CONTROLLER enabled,
> > when booting barebox I got this kind of message:
> > WARNING: at barebox/include/linux/reset.h:54/device_reset_us()!
> > 
> > Not sure if removing all the WARN_ON is a good idea... asking for insight.
> 
> I looked at the kernel and it has no warnings in the stubs. For that
> reason I applied this patch.
> 
> Having no warnings has its downside as well of course. If you really
> need resets for your device to function then you won't notice that reset
> support is missing.
Yeah, that makes me a bit unconfortable with removing all WARN_ON.
I though to only warn if the function is call and the device has an
"reset" in it's of_tree node. But then it's no longer a stub.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

