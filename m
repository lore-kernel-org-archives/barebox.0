Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-102.mailbox.org ([2001:67c:2050::465:102])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9kzD-00060o-Kq
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 08:36:37 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DbCm06JyWzQlYS
 for <barebox@lists.infradead.org>; Wed, 10 Feb 2021 09:36:32 +0100 (CET)
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id AaJhUXJMTeAr for <barebox@lists.infradead.org>;
 Wed, 10 Feb 2021 09:36:29 +0100 (CET)
Date: Wed, 10 Feb 2021 09:36:29 +0100 (CET)
From: barebox+mailing@cookiesoft.de
Message-ID: <315301163.215482.1612946189188@office.mailbox.org>
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
Subject: lock path in barebox-state
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey everyone, 

we use barebox-state in conjunction with systemd on our platform. 
We removed all legacy programs and paths (in systemd terms), so is `/var/lock` removed as well. 

Lennart Poettering decribed it in a github issue why /var/lock is bad (and the reason why it's not pupolated per default): https://github.com/systemd/systemd/issues/15668#issuecomment-623069821 

So for now our option is to create /var/lock via tmpfiles so barebox-state can use them. 

I would like to see a upstream fix for this, where barebox uses its own directory, e.g. `/run/barebox/lock` or similar. 

I'm not sure if this breaks anything on older systems, maybe you can think about it for a second. 

Please let me know what you think the best approach would be. 

Greetings, 
Marcel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
