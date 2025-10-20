Delivery-date: Mon, 20 Oct 2025 14:36:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAp83-009tSA-2M
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:36:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vAp83-0004tO-5l
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:36:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rKbM5naPh/sN3mEJvvkpS+eKH6wl1Ut0FjZKx5X+f+M=; b=LOVRbT8AlnwHgK5UFDSTJoNt+6
	vUin2m1HD7iLJESzh9ZIAafPjxqtwtHwKRyTxty3ZkgnvX4wpVuGn8jCALI79tCpB6rCTstabiHzl
	25CIOZrPKsn5ygExwjlCVlCvQ5BIbrmgLdZFLfSOKAff1+DIIrcTlp2OkIB4J5bPI+nXcj9z/h/vF
	3UQyQTpq47VeOOv+2f5efmTQz8npF50sfMjDNWTHVIzaj2WBY0PJM4PPvHOlokNHaZ/RW2eSWCw4u
	a+wBz3N/ki2n5dmLU2TZeshLEFWljuagkiWL6+gGn+AMg+aKg+WsInxvtu49X8Q1ko6RJ7GgpYCh7
	ajsHEtrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp7e-0000000DZel-0K2f;
	Mon, 20 Oct 2025 12:36:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp7c-0000000DZbv-07Xs
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=rKbM5naPh/sN3mEJvvkpS+eKH6wl1Ut0FjZKx5X+f+M=; b=CjqGZIM+Ip7UFCQWvor+aBu+JG
	sIiG+htf610UL9QTMT3XZJDstjxZh74YRtOs2ha5q63ogPScETx9Hlz9lVN1Nhb/QtwPnwKKUfNuh
	d7CAOO73zTgzmX4dxBD+vlVGNDqMo1r9B/YY+0uNG55J2B3nTyXZtph/dBFk+BG3vHHeE6UyH+ef+
	lbc1IFPKkUB581goZqnfvPkjByBfYsTgJnaCK7fS1Ai2psBHJPZjUFEjMnnoclDgNOsOps9/5+YsE
	1qJVQDtJy6aS2XfmBigmGqRtJAmF1+sJIEvExrW6kY8TelxS4fJZK/clyjb9U3i15JoZ5o+a/rLUr
	/DxLmIXg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAp7V-00000007CTN-1HPb
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:36:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vAp7Q-0004il-JM; Mon, 20 Oct 2025 14:36:08 +0200
Message-ID: <8c12af27-89c1-4f7a-8f10-807c25ab147c@pengutronix.de>
Date: Mon, 20 Oct 2025 14:36:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de>
 <aPYEm6Ese37JVqJd@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <aPYEm6Ese37JVqJd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_133614_583262_CC30D4A1 
X-CRM114-Status: GOOD (  15.07  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gitignore: ignore /build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2025-10-20 11:44, Sascha Hauer wrote:
> On Fri, Oct 17, 2025 at 12:22:13PM +0200, Jonas Rebmann wrote:
>> Documentation such as Documentation/boards/kvx.rst and tooling such as
>> conftest.py suggests /build is a good choice for build output directory.
>>
>> Therefore, include it in .gitignore.
>>
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>>   .gitignore | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/.gitignore b/.gitignore
>> index 98bb4dac89..32d54b8fbe 100644
>> --- a/.gitignore
>> +++ b/.gitignore
>> @@ -53,6 +53,7 @@ policy-list
>>   /TAGS
>>   /barebox*
>>   /System.map
>> +/build
> 
> I have nothing against adding this here. I just wondered why my build
> directories don't show up in git status and realized the barebox
> toplevel Makefile already creates a .gitignore file in the build
> directory:
> 
> 	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
> 
> Any idea why this doesn't happen in your case?

Oh, I was not aware of this.

In my case, "build" is a symlink to outside the barebox sourcetree. The
build/.gitignore is created with this content but it isn't respected by
git because it isn't in the sourcetree. This is also why I added
'/build' to .gitignore and not '/build/': To also ignore it when it's a
symlink.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


