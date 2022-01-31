Delivery-date: Mon, 31 Jan 2022 11:41:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nEU7Z-001b53-5d
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 11:41:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nEU7X-00025q-Tc
	for lore@pengutronix.de; Mon, 31 Jan 2022 11:41:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOd2429FBYWZZRKIq+42gWzaOoBQBmwGmAkHjkU+Q4M=; b=214Pwk03a/3mb1
	TYx1UzCQOiTwFFBrschtjZF0wHNzvVZxwL9Z13GwDXrqwVnJQTEdxMYetyAklK3TA6OFpeyfL5tCm
	kIZXYal1jtWdkz+q4vWuuomv2zTB9bRQ8OZ3qVJGpxYZbqaRmy88DohWjiuC6Ej4wsN1gp+MfmR57
	ht/q3J9tfOaaSn2PHrXlzvHJz41cSAPKdyp4FOYmfxpeTiHD1uQEX+MPhNuhco8aoc5EbB17zLSLp
	ewTQv4zk4K6o1DIkBLtf8MBdamSWyT2m6ECqM1BWCKv1+9QOPoZR9svKNfYTJbpXx/mIxhQOywRvt
	UpZyMlc9L2EFrBN4W+yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEU6C-008urh-I3; Mon, 31 Jan 2022 10:39:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEU68-008ur6-0p
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 10:39:49 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nEU66-0001kA-P0; Mon, 31 Jan 2022 11:39:46 +0100
Message-ID: <9b440929-d7e8-da69-a4b0-dcca1f5a5ce7@pengutronix.de>
Date: Mon, 31 Jan 2022 11:39:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
References: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
Content-Language: en-US
In-Reply-To: <20220130150011.e8b22a088b654f6a0b0f96de@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_023948_098929_A4BB42F9 
X-CRM114-Status: GOOD (  19.28  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RFC: Gitlab CI for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 30.01.22 13:00, Antony Pavlov wrote:
> Hi!
> 
> I have made simple Gitlab CI for barebox.

Nice.

> Gitlab CI runner setup instruction and
> the source for Debian 11 docker image can be found at:
> 
>   https://gitlab.com/frantony/barebox-gitlab-ci-runner

I had tried something similar, but with Github actions

https://github.com/a3f/barebox/actions/runs/740206381

I didn't have the time to pursue this further. I am fine
with Gitlab as well.

> 
> Sample gitlab-ci.yaml config file:
> 
>   https://gitlab.com/frantony/barebox/-/commit/b1ed597d8e67c8f76f4f98cd1c6605b936cf2471

Here's how it looks for Github actions with emulate.pl:

https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/build-configs.yaml


> Corresponding gitlab pipeline results:
> 
>   https://gitlab.com/frantony/barebox/-/pipelines/459422690
> 
> 
> Some notes:
> 
>   * there are several "images size > maximum size" errors during 'build ARM'

Ye. IIRC Sascha disables these for his build tests..? Would be nice to get
those resolved sometime.

>   * fake firmware blobs for ARM are used

Could we just fetch them from the correct location? That way we could
just provide the prebuilt binaries for download. But for a first step,
fakes are fine.

>   * 'build doc' produces sphinx generated html docs archive artifact
>   * 'build ARM/MIPS/RISC-V/X86/sandbox' produce log/ directory archive artifacts

Nice.

>   * no support for kvx, openrisc and powerpc

My GA script supports openrisc. Perhaps Jules is interested in getting
CI working for kvx as well once we have the infrastructure in place?

> 
> @Ahmad
> 
> I suppose we can add your qemu barebox/test/emulate.pl tests into CI.

Here is the Github action config for the tests:
https://github.com/a3f/barebox/blob/emulate.pl/.github/workflows/vm-tests.yaml

Any thoughts on how/if to integrate with the mailing list?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

