Delivery-date: Wed, 14 Apr 2021 09:16:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWZlb-0000Yv-VF
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 09:16:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWZla-0006U0-Sr
	for lore@pengutronix.de; Wed, 14 Apr 2021 09:16:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y3RS8yXKcKsjbznvpQoDDLXeIx0NnynKyyRKTANhJjM=; b=TAtMI0YNlFJK22kHjsBwCa9Qf
	M+ZeQsNckaXdH+BJB2pM+LuC6MBCkk62CpGJXZE3uRKatZ1LkiYTUvw3Ksdrvj/zDSf/Fk5J0TNz/
	tE6jLVSN5iKl970OREZXnlKCMgKLndbuyr5Wpx87qIyzrSyp9xe54MHfXh1KPcWz6hs2/2uS43ton
	cI23xYjm5Afik84Dr4r/ga3lZFrqWUrxJrZbYVbBva1yNWz6++6ocT/1zKUbMV0wVfc+p6nEptYOQ
	+r/H6lIvhNQLhF4WmPJ5NdFVsnRfXK1fK/Z9PqN1uPWhjw0L8fecje7mLWbtvwQXcpcI+2NaqMmOn
	66CsH6Bbw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWZk7-00BnYt-2y; Wed, 14 Apr 2021 07:15:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZjy-00BnYH-4p
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 07:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=E9ELdbHy3NwISATrSmD/4N/qDEIQXxU435Jrx2MBV0Y=; b=BlI41R7TnjcHuhq+8vfLDEHHqT
 ph7l1/k5qic1ENMCH9PQI7JVIqsVj23WH/txZTXjEevahGQVKxq3Vgo2VA9u5Fez9wS7hQzOf7+QW
 OAlqxGDVQqwBzGhAa+UQs7wJPdOAghtYjP2xPe7rqK+kH959Wb6fDzQN1crvwMyn6lAyYcIoJR74G
 +VRk4r4Eb2Pwsj072WC4qvrsnkQB5uyDvf7LLwVmTkT7bTNWkWAHsMgCzzJNZ0gQ2iaFaPrhyMZKE
 2cy8TLdy1pQOb15eN9hP2MXzySwj69USQvrpnzVeUugxagP2RNYsCb7CCxaCGVk+4+C3WUvFtONc+
 p3cA3psg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWZjv-007YxY-KF
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 07:15:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lWZjt-00062X-St; Wed, 14 Apr 2021 09:15:05 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: Lars Pedersen <lapeddk@gmail.com>, barebox@lists.infradead.org,
 Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210413061727.186938-1-lapeddk@gmail.com>
 <20210413092340.241337-1-lapeddk@gmail.com>
 <20210413134048.GO19819@pengutronix.de>
 <b95f7406-03a3-f7ea-43bf-8731ed5046dd@pengutronix.de>
 <20210414070830.GQ19819@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <be3811aa-ae66-e92b-12d8-5f1e30813159@pengutronix.de>
Date: Wed, 14 Apr 2021 09:15:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210414070830.GQ19819@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_001507_694469_CE51F271 
X-CRM114-Status: GOOD (  12.72  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 14.04.21 09:08, Sascha Hauer wrote:
>> If a board deems reset important enough to force it when enabled,
>> why not?
> 
> With that reasoning you could enable each and everything from a board. I
> don't think that's a path we want to go.

Hmm, okay. It could go into the defconfig though, if Lars wants to.

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

