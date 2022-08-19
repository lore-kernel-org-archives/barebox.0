Delivery-date: Fri, 19 Aug 2022 09:56:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwrT-003sAm-LU
	for lore@lore.pengutronix.de; Fri, 19 Aug 2022 09:56:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwrR-0000jc-6p
	for lore@pengutronix.de; Fri, 19 Aug 2022 09:56:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UCfYX31Orwv5JlC55kfZtegDPw6m1Sz84Ihtjm/tq8g=; b=ft3OLPB2H5JJWwrk9HlJjpDmwd
	TozeCyDARMjTM77hXs0gL99CGpKIzjR7eX9Jrmd6B2g8TOwsGka5g3+1IrHX+NKccyj7gClPTFjZa
	Z11MsBZlvHxH+cIsCf0NuV8dRC1+PJq6WwQ8/LsM690c4Yd9A7d3SNBfAJoPIuQSfNwB0EE8rqy1k
	vM+qhhqO0KFOrvX9zuhwhK7cFrPEQoBOEJ0eO1ysYsplLy3i4AASNl5k+kO4sYRGx4w2CcOTEf9/U
	Yaec3USOjV0+twwjJYkguV+Z7VAZ+kL/ISueRbTnrl5BPKaETfBxdrQgozoXeH3upluHY8Zqn4ewk
	/lnf/9Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOwq4-003fKK-5o; Fri, 19 Aug 2022 07:54:44 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOwpx-003eXS-Sx
	for barebox@lists.infradead.org; Fri, 19 Aug 2022 07:54:39 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-3.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27J7rtjS887514
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Fri, 19 Aug 2022 09:53:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1660895636;
	bh=UCfYX31Orwv5JlC55kfZtegDPw6m1Sz84Ihtjm/tq8g=; l=778;
	h=From:To:Cc:Subject:References:Date:In-Reply-To;
	b=XRynQTcpNuvWJIbxX3WP7gtzRqhwmCKHZOwPgYdbdCdvQjtlWpmY6n9Pl+KFbsEwU
	 AR1P+tyjHBLVLUXGdgCHSJtrzTL5DU/sBI94i8EpWArjU1QoMrUsOjnuWndPQlzeUz
	 +8YSHx03psPExxPJxc7cqLM50a3vaUhxKo1qRahZ+/ulu3vYPBcCwMyxfJhcYE+91/
	 AmzoakeTmrKzbNND1vjKEY9/OqAXDianxWWrSjWoLlMK4TuQAT6BGGo+y61029LqF/
	 7+6ukmlSRjwD8hHDbDaWjGLPC+pkK56G6+aMjnFV2SAzwCvIEGQIpe+uD33uc6PKUj
	 YsOAlK2a1Y5Aw==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27J7rqKQ870393
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Fri, 19 Aug 2022 09:53:53 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 6535DD88844; Fri, 19 Aug 2022 09:53:49 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27J7rmgX847748
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 19 Aug 2022 09:53:48 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oOwp9-00GJsk-Uq;
	Fri, 19 Aug 2022 09:53:47 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
	<71267fc55b72c3d2c86e9b58ef95f3e2f3ba93f4.1660552646.git.enrico.scholz@sigma-chemnitz.de>
	<20220819072155.GY17485@pengutronix.de>
Date: Fri, 19 Aug 2022 09:53:47 +0200
In-Reply-To: <20220819072155.GY17485@pengutronix.de> (Sascha Hauer's message
	of "Fri, 19 Aug 2022 09:21:55 +0200")
Message-ID: <lywnb4is8k.fsf@ensc-pc.intern.sigma-chemnitz.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_005438_130111_4090F7CD 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 01/18] progress: add close_progress() to display some
 statistics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sascha Hauer <sha@pengutronix.de> writes:

>> +void close_progress(loff_t total)
>> +{
>
> show_progress() doesn't necessarily show the progress in bytes, it could
> also be percent, megabytes or anything else. We could maybe rename this
> to close_progress_bytes().

When I started this patch, I had an

| enum progress_summary {
|     SUMMARY_NONE,
|     SUMMARY_BYTES,
| }

argument in this function.  But it felt too overdesigned at this time.


> Also it would be nice to print the sizes in human readable form, maybe
> size_human_readable() could be used here.

Yes; I played with human readable sizes/speeds too.  But for developing,
I needed the exact size.

Support for the "'" grouping flag in printf() might be a more generic
approach.



Enrico


