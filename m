Delivery-date: Tue, 09 Aug 2022 11:30:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLZM-00HD71-D0
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:30:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLZN-0005u9-78
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:30:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YaUjzfLIxHImA4fPI5fSjjjOhr8T5LF3FJ90brf95Kc=; b=ghSKnvxeX2KSfgeI6LiOZz15Z6
	DVEyGZYI09XF/h3ySZ63cx5lAuf2rJe+jN68h3pM9OdMxRDaoUDD4FR6E8rFjC4iaPjSGdzklOAGY
	LZB0/btluiOayCeJbhnmrtuNfdznUmcMsFMYFBRcyGDq5NiV+h5OjKAcjjIprozWMgHP7WMGr7Ru5
	dMlCFnHktZvSnb36RNxxtsy8PGIxB4svpzonyf2x5Xq3PLeR0v92rgXwTe96LVY7gHshL3vmSvrgm
	VwkCFzjXIvDYsN3BwSj6FuxaEzj7OhryetGLrufs5RF2Gu+iXk9pOM35AGDDflMs2eYmOBmKu+sZk
	1eVHnFFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLY5-0033Km-Qa; Tue, 09 Aug 2022 09:29:17 +0000
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLXz-00339b-1y
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:29:14 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 2799SMpr603623
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 9 Aug 2022 11:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660037302;
	bh=YaUjzfLIxHImA4fPI5fSjjjOhr8T5LF3FJ90brf95Kc=; l=1837;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=EpcnSvBeb49JKQa6zzmlRWL2+sRWEJbGqjbK/8jBvdslzz/JPEpbewxFoWoZ1qjGK
	 QUQQC2oMf8w9DBE4BFTY/d3h75zRxzHP9eo2PoF63ZA6aEW1WnxiY1CYxj3TsiHsfk
	 gSnVn6QpDPq3DAbDCLCVPaeebuyEv01lmKYaU782GOY9A9eM7OYSXVbJBYWUkM8Ni7
	 NuFX5kMKZUxdZJ5HfLxJmZb7wsYe3ryVoaxRRMzy2pzzC9buXYdfMAHaiRtmlAN9kZ
	 QZEN2+I2gUvM5Jp1wAd2r1wW3oNvZWm8bgE1fytFpn11NAe5gqjpw2jYsJJs+u/FJ1
	 BSTnZ1IVCeCYA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 2799SKAp2396678
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 9 Aug 2022 11:28:20 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 55920C4F676; Tue, 9 Aug 2022 11:28:16 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 2799SGv0755246
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 9 Aug 2022 11:28:16 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oLLX6-002vAt-Da;
	Tue, 09 Aug 2022 11:28:16 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <9133a12926ffb700725459d42b67618ec7d3b4f8.1658144543.git.enrico.scholz@sigma-chemnitz.de>
	<20220731113645.4092241-1-enrico.scholz@sigma-chemnitz.de>
	<20220809084900.GJ31528@pengutronix.de>
Date: Tue, 09 Aug 2022 11:28:16 +0200
In-Reply-To: <20220809084900.GJ31528@pengutronix.de> (Sascha Hauer's message
	of "Tue, 9 Aug 2022 10:49:00 +0200")
Message-ID: <lyiln1zryn.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_022912_109724_D8CCF755 
X-CRM114-Status: GOOD (  17.47  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/13] tftp: implement 'windowsize' (RFC 7440) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <sha@pengutronix.de> writes:

>> +config FS_TFTP_MAX_WINDOW_SIZE
>> +	int
>> +	prompt "maximum tftp window size (RFC 7440)"
>> +	depends on FS_TFTP
>> +	default 128
>> +	range 1 128
>> +	help
>> +	  The maximum allowed tftp "windowsize" (RFC 7440).  Higher
>> +	  value increase speed of the tftp download with the cost of
>> +	  memory (1432 bytes per slot).
>> +
>> +	  Requires tftp "windowsize" (RFC 7440) support on server side
>> +	  to have an effect.
>
> Can we agree on some sane default here and drop this from Kconfig?

I think, it is difficult to find a sane default.  Processors like iMX8
can deal with large window sizes, but low end ones like iMX6ULL can not
handle data fast enough and require smaller sizes (around max 30).

Workloads like writing to slow memory (cp /mnt/tftp/... /dev/nand) might
require smaller sizes too.  Or networks with high drop rates.

That's why, I think it should be possible to configure it in some
_defconfig.


>> +/* calculate fifo so that it can hold the complete window plus the incoming
>> +   packet.  Add some extra space just in case...  */
>> +#define TFTP_FIFO_SIZE		(TFTP_MTU_SIZE * TFTP_MAX_WINDOW_SIZE + 2048)
>
> Memory should be allocated according to the actual window size, not to
> the maximum window size.

ok; I will try it.  Moving 'kfifo_alloc()' should be possible in

| static struct file_priv *tftp_do_open(struct device_d *dev,
| 		int accmode, struct dentry *dentry, bool is_getattr)
| 
| 	priv->fifo = kfifo_alloc(TFTP_FIFO_SIZE);
| 
| 		ret = tftp_poll(priv);


> Otherwise I don't see a reason to decrease the window size using
> global.tftp.windowsize when the memory allocated is always the same.

As I said above: some workloads or networks with a high packet drop rate
work better with lower window sizes.



Enrco


