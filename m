Delivery-date: Tue, 18 May 2021 13:43:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liy87-00048O-He
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:43:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liy86-0000RT-If
	for lore@pengutronix.de; Tue, 18 May 2021 13:43:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mdq2rEuMo5Dg9iYRkfS0noRufXpBma8WWlQyuLBAhcY=; b=IwUSVvDZ+PQ3AVWIneh+uLzVc
	e8AWCbzps+T7eG4/OENZMExw84jCq/NbYR70mbDsbCD6vmZc4zXocQo/mqj76weH6j7DRlJCDZ76D
	A1HmkWyFiXmTA5SVqHKO3H2f9z5p5xRdAG0iR79swzX1ZbdConb+ZQwRC/UhKy34itg2mJ5sFh071
	hyzCVbhfK2Hj5CKb/w+Fci1cAzdanVrYf0K8Lf54rJpKU2FiHFK2G1DGj6l30amlD8RxWlTdECoUi
	TPQ2ulzJUsn8DSW87Ll81FKKBK5TfUXJ8mGk91pbE9gY/Lrbh9vD9SmR+84QwoBqf3c/krFK08tTF
	ACos9NUQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liy6N-000bfH-CG; Tue, 18 May 2021 11:41:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy5w-000bZf-FS
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:41:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SN/U9woHhSuayq7IT3xD1ZWUiyJ7dLQnlpZyhKi+7+k=; b=p77/yyTIvKROcIysallpXOdCyK
 FMGdhFyET29FmIAB3Y+7iGs10IWd9KB9Str+HGWm4MBoUCsx1j3OSxVLKXbqvvdJetDeQSW/lGMIf
 AbVLWf0BL7H4UPkdBeGcjfRz8UVpYP0xI9SuuTTKVeOdbdD0Dhb0Wd3Va4nHT6hH3lNA0e1OOvtrL
 6aEz/z0BTkYjHJztTBZYbW+XAIpSX5taIBq0QqsD38A/0kJs8lm6vibH1x3kjgZxdDrla4C8oKtoY
 OrRTTWmt6I/qphJeGcQLjJ7BQp3Y3N8oF53NQaiM/l7hJ2hu+VKye2MtyCJzlj4gTCkpN7qWmhyXG
 +Q3XmyDw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy5t-00Ebtq-Nq
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:41:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy5q-0008TD-FC; Tue, 18 May 2021 13:40:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy5q-0002Zk-4L; Tue, 18 May 2021 13:40:58 +0200
Date: Tue, 18 May 2021 13:40:58 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210518114058.GA19819@pengutronix.de>
References: <CAMHeXxMH8E4ae3HvFtkckJAc_hk1xWBJxMyBxab_OdPRn3y1Vw@mail.gmail.com>
 <20210517073830.GR19819@pengutronix.de>
 <CAMHeXxMZ-ib7TRGs8gON2VeRNbhvKfWbVtDHwT-mNSTtvyYadg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMZ-ib7TRGs8gON2VeRNbhvKfWbVtDHwT-mNSTtvyYadg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:14:11 up 89 days, 14:38, 109 users,  load average: 0.04, 0.19,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044101_799238_2FF2CA56 
X-CRM114-Status: GOOD (  39.16  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Board specific environments and broken configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 17, 2021 at 01:57:56PM -0700, Trent Piepho wrote:
> On Mon, May 17, 2021 at 12:38 AM Sascha Hauer <sha@pengutronix.de> wrote:
> > On Fri, May 14, 2021 at 11:46:38PM -0700, Trent Piepho wrote:
> > >
> > > An issue with CONFIG_DEFAULT_ENVIRONMENT_PATH is that it applies to
> > > all boards in a config.  If multiple boards are built at once, e.g.
> > > imx_v7_defconfig, then there is no way for each board to have a
> > > different extra env this way.
> >
> > Thanks for spotting this. It shows some points that could be cleaned up.
> > Generally I suggest to remove the unused files. When they are unused
> > nobody should miss them. For some boards we could think about removing
> 
> Maybe the documentation could be improved, as it appears to say that a
> board env dir will automatically included?  I wonder if some boards,
> e.g. skov, thought this too and didnt' realize their env was unused.

Which part of the documentation are you referring to?

> 
> > them as well, like for example the i.MX boards that are still not
> > converted to multiimage support.
> 
> If I understand correctly, with multimage support one puts the env
> directory in the board makefile and then board code will add it.
> Doesn't this mean that every env for a supported board will be in barebox?

Yes, indeed.
Not the whole environment though, only the files that are overwritten in
the board specific environment. The remaining files are still only
present once in the binary. This scales well for the few little text
files we have, but of course isn't very size efficient once you have
bigger files like splash screens in the environment.

> 
> I was thinking there might be a way to avoid that and also avoid board
> specific code.
> 
> Pass an env overlay, or overlays, in the u-boot dtb that the pbl
> provides.  Do it like a FIT image... e.g:
> bbenv@0 {
>     compatible = "barebox,environment-data";
>     barebox-bbenv-data = (raw data of the .bbenv goes here);
> };
> 
> The raw data is injected during build the same way a FIT image puts in
> the data for a kernel, dtb, initramfs, etc. into the FIT.
> 
> This way the env is only in the board specific image with the board
> specific barebox dtb.  And common code for barebox's dtb handler can
> trigger on the node and add it to the dtb instead of duplicating that
> in the board code.  One could also pass additional env to a chained
> barebox, though I don't know what one would do with that exactly.

That sounds doable. We wouldn't even need an overlay, just a way to
compile an environment raw image into a dtb. This might be tricky to
implement though as we would need a dependency from the dtbs into the
environment.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

