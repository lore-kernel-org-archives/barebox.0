Delivery-date: Mon, 07 Feb 2022 10:38:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0Ti-0088VQ-08
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:38:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0Tg-0001eG-9m
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:38:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PK+JnF8GdnhmsBI2rnImsf9lYt8uwNjUoOZzA6IfeZA=; b=fyZJ02qxPJKxj+
	FEYoJM3tHHzjJjmch2AqSRlQqbWIHy6GUmC0mz5Qe13f/vVWxEVBMxzmT1xK4vY+zkKgy8V21YEXP
	sMMlzXjTgSgoXEqtrr0NHUH/FSZSpMu5rtu25ihxTjCXuCo8uFgShGzHW7EPMtjwUBTP3ywDxpeo2
	B4RPoorPGFd37mAVv1acKRPBMGUa6LpLfQ0Os/PVQO9OkOHHxbEXAAD8JeapKqahLhXrD3/WaYpt7
	SH5frZCrfBZq2cuaZiDIc4soIxAVT8E+B0+LJ0KQiymu0SMnkeCpx7BSqjed3+7vstH4Cy9ZWIsjk
	5DoB3eaE7BKEnY62lH4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0SF-009aoh-NZ; Mon, 07 Feb 2022 09:37:03 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0SA-009amK-Fq
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1644226608;
 bh=n8dcDImxAKvjEpb6yjCvb4VyasTJFG42QGdyQlgc3dg=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=X+Vb02Pg2WZ/imfjWWHlWGndfB09p4D2saH4s8Tw6FVzinOPInzlxqII0ag7scMl0
 54V6PnSVQtblV4ZiT18yfn+XMraudw7JVRldaTtnz2qtHJ2ePN+m2bY80WcMv1fsxa
 8H6BkLY3SuRjc6GQ25qF7KpU8H97+GHIF9rliXUg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([217.61.149.19]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4JqV-1nHHZB2aZ7-000KAp; Mon, 07
 Feb 2022 10:36:48 +0100
Date: Mon, 07 Feb 2022 10:36:42 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20220207083440.GD18637@pengutronix.de>
References: <20220205231930.2948516-1-ahmad@a3f.at>
 <20220205231930.2948516-2-ahmad@a3f.at>
 <20220207080032.GO23490@pengutronix.de>
 <7dbece94-3df4-a613-30ae-07c9a9fdb284@pengutronix.de>
 <20220207083440.GD18637@pengutronix.de>
MIME-Version: 1.0
To: Sascha Hauer <sha@pengutronix.de>,Ahmad Fatoum <a.fatoum@pengutronix.de>
CC: Ahmad Fatoum <ahmad@a3f.at>,barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <5649171E-0BB6-4A39-AB3E-DAB262CDC50D@public-files.de>
X-Provags-ID: V03:K1:iVcUxPzuqgZR8XyneWlMqjB0jTD8ToAzjPl5zyylIuF6M0GNmpf
 Th5u9qO+oXVZgKGdTonlszJ4fu7r0bhsXQwsj/KA4LFOrPnaFZRWUtkkdaz0e8d5EX4QLJV
 zGbR1LcjCH0SpZ0FwzzMHdbdxa9Fc1xe/5RHvbq4n0KGuCG7D5MLF/oG6Cq47jGTsbztFEl
 YQqPNE+14vIwZK4Nc6qqQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:AJNH5eyHmmY=:VwQADpys5acKd17Zmpvqvq
 GKqYRHVMXG5glz/ODYt4aspv6pK2mBkXlxrK3nlYSEYB5NpLouoq2PJzwf14FFrhXDb2vWxJa
 UBREUc4KmDNYZdmYOR7d0tyBnTqOieDHfpg2p8E7rYlArNJcRZl3RGmO/rpPZma/vNpA6Yc/d
 d4NqHmPzJEPWEBQpO10BzP6HIW9od6YGquwE9PE1xr72hxDkNvsHsNTfkoiNqwXiFXQQ70Jj0
 3WMfbbEw7X/NfF3WCGpwwf+pi/bpPOMqBdAS9KkUYnHGKjxLJgbLESDyiaH2rMTgwyc+STnQI
 CYwarHk8KpcCgxiwKx++ChrkPvGAEz2g7K7vGMwr92N5/+fx0BpG9sMe1u4HveCCikdgprkl6
 2eS2j2a0X2WM7i38L0Zmg9uGhB46U0E9WOrzW2AFpyyN13sOfy+MnIsaWwSgI6c4vt57b1XaW
 xFb7RQ2+UAaZQD4BkPUbJS+Yu8mniPLmN3fQN+EbnrALCAjabHm3qYEQG49YNXMuifdq1xE2L
 NJIKizo2AB21eQ/gcOOR+FrB4vbEvt3ldCZ5OC0ljWar+4J/4TEsYJ9oKdyYW39N3b2XK+o3j
 l8fStzVfFxgnbMAXbUGdcXIKTtN3wz2xzJhxxokMfR3DbOlbds62/7jryubN8kqMTwjoqnJNr
 ZkoGJdBiP96bRNlC3yjfucWJi2TaLyVyiaZKv5Xb4PyOntGbTDe0vrrM+V4uOUP4/GSsW8QYb
 HzeG+y7B8IG1cUUKE+k2eTK2S3zntJV7PSuT/f3tqjv17FInD2YKFMQA4rp/qAaImqpuPsT0d
 z0RiJ/SEQSC0LlOwvMNEAqtMDc/gT/BPD52t9I2V7KH3J61C6RafiojrWP9NEZOKGsopXI+fo
 Hri53FYNkWOpLujejbW2Ju2rrMlMBfbrCEbfGCrO3FeGJs8xCeigNY4xdWaRxFNwTFwiirZlr
 Ali4JAWhFJOuHoeiwB6tMHzTmvCbsJmXUNHu0w3JwMwE2jDyukzIHn2/yqcbubD8PA8yld9Ls
 9vXDg0jKzGRjYeUNgJH47Rp1pqhTG2n0qO+g+r9fTgDSCgkYm8cnOxUoBnsXxWHNNrvD/ekdY
 EcfBIkNHcURbeu6mNMuRpKp93UpV8VzgQ+htcEGRdRRUMHxFXlLsTXT0xRumfzkzUkGTUlX4l
 THWtT19XXjdYPeuDgTlhDop9FZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_013658_904776_65DEC020 
X-CRM114-Status: GOOD (  13.72  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] Documentation: user: barebox: mention generic dt 2nd
 stage support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 7. Februar 2022 09:34:40 MEZ schrieb Sascha Hauer <sha@pengutronix.de>:
>On Mon, Feb 07, 2022 at 09:14:51AM +0100, Ahmad Fatoum wrote:
>> Hello Sascha,
>> 
>> On 07.02.22 09:00, Sascha Hauer wrote:
>> > On Sun, Feb 06, 2022 at 12:19:30AM +0100, Ahmad Fatoum wrote:
>> >> Most users interested in chainloading barebox will probably want
>to use
>> >> the generic DT format for that: It will pass the checks the boot
>command
>> >> may have and it will ensure the system is in the correct state,
>e.g.
>> >> that caches are disabled.
>> >>

>example:
>> >> +
>> >> +.. code-block:: console
>> >> +
>> >> +  U-Boot: tftp $kernel_addr barebox-dt-2nd.img
>> >> +  U-Boot: tftp $fdt_addr my-board.dtb
>> >> +  U-Boot: booti $kernel_addr - $fdt_addr
>> >> +

>> This is what the documentation is saying right now. It only appeared
>> in the diff, because I rephrased the start a bit. I don't have a
>> 32-bit ARM U-Boot here to test, so I'd rather not rewrite that part
>> myself.
>
>Well you've introduced the part to use the bootm command yourself :)
>
>commit 3a14fb79153af84323fee8308989011cd05c7d96
>Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
>Date:   Mon Jun 17 16:18:46 2019 +0200
>
>However, I obviously failed to review this properly. I'll create a
>patch
>for that.
>
>Sascha

In barebox "bootm flashable.img" works, in uboot it is booti with barebox-dt-2nd.img +fdt like example. I have a armhf bananapi r2 (mt7623),but it looks not supported by barebox
regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

