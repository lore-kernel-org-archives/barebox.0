Delivery-date: Tue, 15 Jun 2021 21:01:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltEJT-0004Xn-D4
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 21:01:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltEJQ-0004UQ-QB
	for lore@pengutronix.de; Tue, 15 Jun 2021 21:01:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyccZrNtk94fgs/0LzCAknDkRzAb0KIV0hEhhLtra7Q=; b=BZ4RFJbFV0cSuj
	hGRUsnKeWmP2bOiTmdQ+yR1qTV/UoDheqQGrqQuQbxGL+CKkkJlKOzV6PuuVmx87Hdg7H4Q6q4405
	zSyEbw1XmEOVsocNzjoiXG0hRoOI8g0/D1CPJcH+n8Nx9jxRVWgxV4Pj2aUDHmREC3DPJ9+2P9e9E
	VaDmE0YuH9eoURObbAHXN+HznSzX0cC6nHWNWrPXf65TBPkluS8o46CbUVx2sAnM8jnfx2jkrZfrM
	9iqQGrUzwiIx5jfjuSzZEAFNDPrZ8K4nnwzscewq63ddebS3l10O2/sGywQjjfib6///F7DLSPJJ3
	HrMZKhumS4nKBTITEU2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEHi-002HtS-3X; Tue, 15 Jun 2021 18:59:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9MV-000E8e-Uz
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:44:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
 :MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=h1+xATIuSLYShbxFVFGzUtK4gq8qgZswLgmfzRdn7do=; b=lDyJCEyPsqLGn0g03Fwb3iFp9D
 56cKgxv4mPnyiZGybzsGFshnnYLS1et+lqlUsBDyN3tcpIdJQpImE5S3xwbBG4Yk5e5RqVKPK2rP1
 UDQGDd6YzzRGpzcn36dlvv81Kv6zED3hgQXbGv/ZL116yNiGRhwqOIHoSSBe3ovGsAyPJ0s16jQvP
 5cCNRS0AEggx7MPcBYWMC+irhER7PG0fNh6mhOEyW3Q/T40YdVfNTYuT3fNQZ03+vF+QxMLagV1NF
 3Udm20ZloZGQD3I8SorIQrxWnfatbccpP3OqbgrzRbP2CxC7S2tWEhDRnWb5/7/Xh8lO9gLvulDoC
 NBHNbbjA==;
Received: from out116-156-vmse03.mailcluster.com.au ([116.90.2.156])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt1ij-007MuD-0i
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 05:34:49 +0000
Received: from vmcp03.web-servers.com.au ([116.90.56.28])
 by vmse03.mailcluster.com.au with esmtps (TLSv1.2:AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marc@cpdesign.com.au>)
 id 1lt1gs-0001hY-19; Tue, 15 Jun 2021 15:33:32 +1000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cpdesign.com.au; s=default; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h1+xATIuSLYShbxFVFGzUtK4gq8qgZswLgmfzRdn7do=; b=KwQAqS0E5l69/2AHwJSvg2yP58
 Vh0YlOlREJCMYguSF77rW3K7gRAIsnB8BQaX/QdMAcpxr4ARPQvJy3gWnTPPCk/COhJOAZYL5kt0Y
 qkvaINMrKpEBd2ZWUs6/fl4V2R0F7NrbNZPbol9jaOq/yqqcSMsdrw7H52kARz6D229NCYWebHPHi
 5SdOINzvBv7z1lSZhpm/agZKR6wy5H6ydxHJ2hdd/g/mysbJDrnNT05erl0abQXXhGQKcPu+l1WbV
 dZdK2/47h+r9MItKJIuvVRFjMkVvsNkWhI9cYTZ9JRPxQgRAM9evjkXb5IfmhcIarFfQpdg/QmNE+
 wECaoqAA==;
Received: from 60-242-242-93.static.tpgi.com.au ([60.242.242.93]:52588
 helo=dev4.localnet)
 by vmcp03.web-servers.com.au with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <marc@cpdesign.com.au>)
 id 1lt1fx-00964G-Bh; Tue, 15 Jun 2021 15:31:49 +1000
From: Marc Reilly <marc@cpdesign.com.au>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Jun 2021 15:31:43 +1000
Message-ID: <2219985.gfUx2oyyA2@dev4>
Organization: Creative Product Design
In-Reply-To: <cefc5375-c35a-7e32-8cbe-557a3e87fa99@pengutronix.de>
References: <20210613222639.13190-1-marc@cpdesign.com.au>
 <cefc5375-c35a-7e32-8cbe-557a3e87fa99@pengutronix.de>
MIME-Version: 1.0
X-Authenticated-User: marc@cpdesign.com.au
X-Authenticator: dovecot_plain
X-Originating-IP: 116.90.56.28
X-SpamExperts-Domain: panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Username: 116.90.56.28
Authentication-Results: mailcluster.com.au; auth=pass
 smtp.auth=116.90.56.28@panthur-sh-outbound0.mailcluster.com.au
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.03)
X-Recommended-Action: accept
X-Filter-ID: Pt3MvcO5N4iKaDQ5O6lkdGlMVN6RH8bjRMzItlySaT9q6Cp+NQhbn20xhIM97LjRPUtbdvnXkggZ
 3YnVId/Y5jcf0yeVQAvfjHznO7+bT5xU2wr8oc+kSjorbvoTXOWnn9x3u48OEqFYZkyf93j/Tg+j
 syHJyCzY3R9a95SrpEnLxuaBI3F2J9EqtYNaBaeA58fMnqZUTt7CyKlJUh+zhn8RgASnNs4K3JzR
 4y2M9E+DJYXE4Dl0gs/Km8rE1WFZfs1c4BfZ2iQ3yTEfvnsIN1UBeeMoZsbg7u0T7DjP+QU6u9+S
 OVXStek7BMNWtjKAlLaAd2pmJzsQaxIULwMyYi+KOWuwqQcfyIQvHR3jv3GKawwNLAY3fd6MHf+0
 34TJpenM9P8hYP8ubDqMlfnjuPZsEhnzWgZmn4n0yUjDMDh++SB3n67eAPF/18rav9nB3IzVmGPS
 YcI3Px+Ei1WUTh/bvG8EEe0+nGAJVEMtr6R/0tARiKLbsBv4eBarRURN7KQ0nOFtCHz/YEb43puL
 SMj2Pca5u0y1bp/8+9s+RQapF3paJ4XuhremLkBfEbs7vCrJPmnnTHzVkpybMK7ZTVegBudVRlZt
 vvVl5OIIVP7QzE4pWsN9DMOCoUO6aPH3y5st7j0hPb8jfR6BgaUEDLPZjgLlRnjaMQBlEtUKR9Ci
 HEZqDVNqJY11xK2c9zHVOUiXqFR4+Ye5S9OnxAFcSMRSmRX+UMoFeRyYJQNS5xpti/Gs5Opp8ngt
 ChEuZ8aF16NKrNRKQlGCZapDXIE9bGLd2oovRiUq5MVCzVMhgrk1ybuxObl5Ahw2v+ZvJgiQLypP
 fi/26oO2cauHDD/6kY8aC83qbLT/K1kXiZHNZ58TjZCHa7SYHAqkaPoNDPsTjV9FGdT+iwHmbcik
 OnvI898f7fptU33TI74zoCwM3f9dtK+XlvY8YceYecRkLS/qQa+DJelgV85WMiMFWKhfKrIucAVu
 QFyPsXiG9zxTA6R+pvlHhV6a5QjptwQBGybQtxyQ3oN2D6gZHaJUwSTBQTLWEPfmzwYu7mwnjKQz
 zRqUkxE+SK4CkqqQuY/ADtB7uFLX2886rlwU91BGF/+su0Yfl00XU0weOTegbVNJ8cTeNc8dl1pm
 DnP3+GHmbGtM1OGMrcn4QNqBtDS5lGxoeVZEhf7ni/JzoBrs+9v/N8Nai21OO0sCX7LKxbYOjL7U
X-Report-Abuse-To: spam@vmse01.mailcluster.com.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_063447_962158_3DE52A9D 
X-CRM114-Status: GOOD (  21.50  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] common: boot: don't return too early in bootscript
 dryrun
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Monday, 14 June 2021 6:51:27 PM AEST Ahmad Fatoum wrote:
> Hi,
> 
> On 14.06.21 00:26, Marc Reilly wrote:
> > A dryrun boot will now run the boot script and a then a
> > dryrun of the bootm.
> 
> This would change behavior for boot scripts that directly boot
> instead of setting up variables for bootm to use, but I think
> > that's acceptable,

To be honest I didn't consider this .. although I'm not sure what the use case 
for this command would be for that scenario.

Ideally then, there could be two parameters for 'dryrun', one to stop at 
running the script, and one to go through to the call to bootm.
This could also be done using a combination of the 'verbose' and 'dryrun' 
flags ... (somewhat hackish solution)

> > 
> 
> Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> > ---
> > 
> >  common/boot.c | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/common/boot.c b/common/boot.c
> > index 07b67734d..183e6bb43 100644
> > --- a/common/boot.c
> > +++ b/common/boot.c
> > @@ -77,7 +77,6 @@ static int bootscript_boot(struct bootentry *entry, int
> > verbose, int dryrun)> 
> >  	if (dryrun) {
> >  	
> >  		printf("Would run %s\n", bs->scriptpath);
> > 
> > -		return 0;
> 
> Maybe change message to reflect the new reality?
> > s/Would run/Running/

Sure, I can do this, unless we think the extra parameter should be added to 
the command.


Cheers
Marc

> > 
> 
> >  	}
> >  	
> >  	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

