Delivery-date: Mon, 31 Jan 2022 12:04:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nEUUR-001c8b-TT
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 12:04:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nEUUQ-0005IF-LE
	for lore@pengutronix.de; Mon, 31 Jan 2022 12:04:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cw8pbwcL0PJQTdMNUFVtuoKp80+BVxOeUcBg4cTRtM=; b=M050eQ5w49MwBB
	AoIJgPIPR01VDflnkuwnKlyjOjP7QY4QHq55WGSKpinKeWJyZdCLFPTPhlkZc8yKkMyocIBsfI/V9
	u8itzvhYPuMRNYIeQCZxhA/fZV7PJ7B0hn0inV4ZhY7n2u/Xt/EkekE4q8G0+ef6KgZe7D4oPuUyC
	1MRnTq7lluSjw7vlq3cX9962mi1CX2FYWVKHiZtsCsrDcL79zFMZwhfSBrd9eD+EESuQWeg3YHbnq
	7sREW2DWd7sswS35Yl7jZkYIUw5zFGLAkfol1LoS8pDyL+dJH7TKZxrYAOBR7v7TxUOcAbYrdRekG
	HRoqnVBd7KJzCHk8n2tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEUSz-0090n9-Gu; Mon, 31 Jan 2022 11:03:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEUSr-0090ka-62
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 11:03:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nEUSp-000539-D0; Mon, 31 Jan 2022 12:03:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nEUSp-000467-2Y; Mon, 31 Jan 2022 12:03:15 +0100
Date: Mon, 31 Jan 2022 12:03:15 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220131110315.GE23490@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
 <trinity-eba130ad-1bd5-46a1-95bd-4a2ee29c1f96-1643452807981@3c-app-gmx-bs07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-eba130ad-1bd5-46a1-95bd-4a2ee29c1f96-1643452807981@3c-app-gmx-bs07>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:37:05 up 51 days, 19:22, 85 users,  load average: 0.14, 0.16, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_030317_257666_32F3D03A 
X-CRM114-Status: GOOD (  20.40  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Frank,

On Sat, Jan 29, 2022 at 11:40:08AM +0100, Frank Wunderlich wrote:
> Hi,
> > Gesendet: Donnerstag, 06. Januar 2022 um 09:08 Uhr
> > Von: "Sascha Hauer" <sha@pengutronix.de>
> 
> > It works for example with:
> >
> > for i in /mnt/sd.1/extlinux/Image*; do basename $i b; echo $b; done
> 
> this works with full path, but not if using a var for dir var
> 
> barebox@BPI R2PRO:/ i=0;for f in /mnt/sd.1/extlinux/Image*; do basename $f b; echo "$i:$b";let i++; done
> 0:Image_5.16
> 1:Image_5.16-next.gz
> 2:Image_5.16.gz
> 3:Image_5.16.gz.bak
> 4:Image_5.16_q64
> 5:Image_bpi
> barebox@BPI R2PRO:/ imgdir=/mnt/sd.1/extlinux/
> barebox@BPI R2PRO:/ i=0;for f in $imgdir/Image*; do basename $f b; echo "$i:$b";let i++; done

You've hit yet another hush bug. Normally when you do a

# foo="bar baz"
# for i in $foo; echo $i; done
bar
baz

$foo expands to two words. This works as expected.

This also works with:

# for i in *; do echo $i; done
dev
env
foo
mnt
tmp

Using a combination of glob pattern and variable however does not work:

# foo="*"
# for i in $foo; do echo $i; done
dev env foo mnt tmp

hush inserts the expanded glob pattern of "*" as a single word into the
parsing data, so i doesn't contain the separated words, but instead "dev
env foo mnt tmp" at once.

There are many bugs like this in hush and we've fixed several of them,
possibly inserting other bugs along the way. I've starred on the code
for a long time over the years and still don't fully understand it. When
changing things I'm often not sure about its implications. To put it
shortly: hush is broken beyond repair.

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

