Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2EFS-0000dV-CI
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 14:14:15 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DLSFH35TgzQlYt
 for <barebox@lists.infradead.org>; Wed, 20 Jan 2021 15:14:11 +0100 (CET)
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id tar3nQPIPzph for <barebox@lists.infradead.org>;
 Wed, 20 Jan 2021 15:14:04 +0100 (CET)
Date: Wed, 20 Jan 2021 15:14:04 +0100 (CET)
From: barebox+mailing@cookiesoft.de
Message-ID: <199631954.110480.1611152044705@office.mailbox.org>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: /env/init script order
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey folks, 

according to the doc[0] the scripts in /env/init will be "executed in alphabetical order". But certainly, this isn't the case (for me). 

If I look into the source[1], I see a `readdir` call, which certainly guarantees no order at all. But I want a certain order, at least I want my script to be executed after the automount script. 

1. Why is there a discrepancy? Was there a time where the scripts were executed in order? 
2. How can I achieve, that "my script" get's executed after a certain (the autmount) script? 

Greetings, 
Marcel 


[0]: https://barebox.org/doc/latest/user/defaultenv-2.html#env-init
[1]: https://git.pengutronix.de/cgit/barebox/tree/common/startup.c#n333

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
