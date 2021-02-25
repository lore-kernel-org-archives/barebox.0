Delivery-date: Thu, 25 Feb 2021 08:19:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFAvu-0006ji-Te
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 08:19:34 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFAvq-0004ao-9l
	for lore@pengutronix.de; Thu, 25 Feb 2021 08:19:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+RrWIOqf1JXodKi1zE/O0zQw1YDSkpI3SIuXI4OEY/8=; b=rxSNeQ6oOn9XH1Z/nR0jFJXwQ
	7/vIbIC/P+tgz+F0oOXnMhJ5BGAIbHkR2+GihFmb9b/NQg97eSjQKeaV4xa33HP2GMSEJCcYkPkFQ
	C6KtbWwQTH0Q2R3Z2DSJdPf52/fSIwyIpie1zBv8Mb56QgwtBJvsprAQy+IG0uhMz4Rj47wz0Z9w2
	snKXrRLESrllFU6L5LOlcixxXnOZWk49cDBVRDY2vZ6KUAwGlF2hvt0/aZxjz593DCjsbf0eGOsgJ
	6QUzXnOEF+BR5/lsS9pdtdXX6YpeEjhz+dDtk3MGiozsCms7AAJKE4Wnjw6XxMgt6GqvDGTk2pQUr
	9LYyYWGdg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFAuI-0002m7-CP; Thu, 25 Feb 2021 07:17:54 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFAuG-0002lD-3Z
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 07:17:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id ECC7D1A0A3F
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2021 07:17:42 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLKJB1UQ;
 Thu, 25 Feb 2021 07:17:42 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id BEF221A0A3E;
 Thu, 25 Feb 2021 07:17:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 95ACB27E05BE;
 Thu, 25 Feb 2021 08:17:42 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id afOnbjP5YCpF; Thu, 25 Feb 2021 08:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1CD6F27E082F;
 Thu, 25 Feb 2021 08:17:42 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1CD6F27E082F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614237462;
 bh=IhXVsBkIwaAZ+M9AQcq13nU96261Ctpsd+/GLkyRqjI=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=R699U08ULZ6GtXCOmssd9NnpggAq9Zjg6VrWZ6igrHZmztRJxa1CAdCI1+l+d+Z7e
 gx2NmSKDdjaWP+bv6ccIphSsJzjZFlJWhLI/+Z6sFgeYBSm8mDIs8cE6gCjpyIfc4a
 FIxawRhVIghRlkDSD2IsVOOUfr4hV1v3ecHZx7QI=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6-CZYIomWMqW; Thu, 25 Feb 2021 08:17:42 +0100 (CET)
Received: from [192.168.0.120] (unknown [185.228.231.249])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id AFAD127E05BE;
 Thu, 25 Feb 2021 08:17:41 +0100 (CET)
To: Sascha Hauer <sha@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>, shorne@gmail.com,
 shorne@opencores.org
References: <20210223095902.GD5549@pengutronix.de>
From: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
Date: Thu, 25 Feb 2021 08:17:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210223095902.GD5549@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_021752_340334_943C64BD 
X-CRM114-Status: GOOD (  11.87  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

I am adding Stafford Horne in CC, as I think he might want to help about 
openrisc port :)

Cheers

Yann

On 23/02/2021 10:59, Sascha Hauer wrote:
> Hi Franck, Antony
>
> Are you still interested in barebox support for NIOS2 and openrisc? If
> not I would consider removing it. Background is that we are planning to
> introduce green threads and implement pollers with them which makes
> green threads rather mandatory. Green threads need a setjmp/longjmp
> implementation that would have to be added for these architectures.
>
> Keeping the architectures is no big deal normally, but I don't want to
> add untested new functionality, also I don't want to implement things
> that nobody uses, so if you are still interested it would be great if
> you volunteer to implement setjmp/longjmp.
>
> Thanks
>    Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

