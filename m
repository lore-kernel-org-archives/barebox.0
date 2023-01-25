Delivery-date: Wed, 25 Jan 2023 09:43:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbNS-001Idz-8B
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 09:43:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKbNP-0000vx-Id
	for lore@pengutronix.de; Wed, 25 Jan 2023 09:43:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e1aZeZREbkSDHejO56MbkZcWZ8we6BnpOigkO/sDd24=; b=mcHcnN2m2pGrAkUE7kZuKmiGCZ
	WnR1Ea9x2e20eHob+bqvdUPbdkNej3hHx1jj34aCI8c3ZrSxPIYmzEgExr94Iqu1HqcwVDRnsNcGQ
	eBuXfve8XE2XltobhCf52kd5FQlON9FCtgkPZAYYe7Vnut81EgK/SMTFwgJqZ4uaQ6WSrSe+dw5Fj
	n0Aak5C/gj2CRSkdvf6i0nAbcQmRR8mdMMUFSfHMNkGhQLozdif39xlPQ+C5ma9skRZjBtxnA902Z
	8KasCjpkyd4ke5hFMtB2IeURGgojVqmi/CxTaclKuFv691SNAhDWUwu8r9WtUDLgMwZ9HkejsOtPC
	K9PKv/ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbM5-006Uhl-92; Wed, 25 Jan 2023 08:42:05 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36] helo=fx306.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKbLz-006Ugh-SR
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 08:42:01 +0000
Received: from localhost (fx306.security-mail.net [127.0.0.1])
	by fx306.security-mail.net (Postfix) with ESMTP id 9A85B35CE67
	for <barebox@lists.infradead.org>; Wed, 25 Jan 2023 09:41:57 +0100 (CET)
Received: from fx306 (fx306.security-mail.net [127.0.0.1]) by
 fx306.security-mail.net (Postfix) with ESMTP id 7479C35CE07; Wed, 25 Jan
 2023 09:41:57 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx306.security-mail.net (Postfix) with ESMTPS id E2F0735CD79; Wed, 25 Jan
 2023 09:41:56 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id BED3527E0461; Wed, 25 Jan 2023
 09:41:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id A69B627E0491; Wed, 25 Jan 2023 09:41:56 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 Bk2RGexAxjzl; Wed, 25 Jan 2023 09:41:56 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 93A1E27E0461; Wed, 25 Jan 2023
 09:41:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <1479.63d0eb54.e1ceb.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu A69B627E0491
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1674636116;
 bh=e1aZeZREbkSDHejO56MbkZcWZ8we6BnpOigkO/sDd24=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=oik5mLo1JNQ1eeMiTVu5YNumyxVSQXaCkDz2j7P19JreY1UqHmD3GHK29UBhgc/yQ
 MFTRKsg+ZiP8cnFwBL7CHe+v19b1ffe/+cw+d0eCR4f5SnkWCUE3MX17OP67LJ7pAs
 NTBUrhqkBTlU8W8B2gEQeiqB9NudUvELkRbWQLFs=
Date: Wed, 25 Jan 2023 09:41:55 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125084155.GC5952@tellis.lin.mbt.kalray.eu>
References: <20230124182224.GB5952@tellis.lin.mbt.kalray.eu>
 <Y9BU1Z0CJH6Vk01d@novena-choice-citizen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y9BU1Z0CJH6Vk01d@novena-choice-citizen>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_004200_068077_8F75A323 
X-CRM114-Status: GOOD (  14.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: Question about RATP protocol limitation during handshake in
 barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

On Wed, Jan 25, 2023 at 08:59:49AM +1100, John Watts wrote:
> Hi,
> 
> I had a read of the RATP spec at https://www.rfc-editor.org/rfc/rfc916
> 
> The goal is to detect one end trying to start a fresh connection while another
> is established but manages to be a bit too broad by specifying that any SYN
> is an error rather than a SYN without an ACK.
> 
> There seems to be two solutions here:
> 
> - Don't re-send SYN packets
> - Break the spec and check if ACK is set before terminating the connection
Yes, i think that's the best thing to do, to ingnore SYN-ACK packets,
new connections should only start with a SYN.

Thanks
-- Jules 






