Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9kzh-00063N-By
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 08:37:06 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4DbCmb6LZtzQlT3
 for <barebox@lists.infradead.org>; Wed, 10 Feb 2021 09:37:03 +0100 (CET)
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id J4UF3yl3Ci3G for <barebox@lists.infradead.org>;
 Wed, 10 Feb 2021 09:37:00 +0100 (CET)
Date: Wed, 10 Feb 2021 09:37:00 +0100 (CET)
From: barebox+mailing@cookiesoft.de
Message-ID: <198822053.215492.1612946220837@office.mailbox.org>
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
Subject: Using barebox-state as library
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey everyone, 

I would like to set and read barebox-states during runtime. Unfortunately only a binary is available to be used. 
But because the variable names and values are from an untrusted environment, I don't like them to be passed to a shell directly. 
Therefore I would like to use a barebox-state library, which offers some functions, e.g. read_var, set_var, ... 

An other approach would be some kind of IPC, e.g. dbus or similar, but I'm not sure if that would fit into the simplicity of the current binary. 

Do you see any other possibilities so fetch and set variables from the barebox-state? 

Greetings, 
Marcel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
