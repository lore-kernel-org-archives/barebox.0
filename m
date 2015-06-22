Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from charon.eutecus.com ([66.211.109.45])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z73VV-0002VJ-En
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 15:19:33 +0000
Received: from [192.168.42.238] (budapest.eutecus.com [176.63.203.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kgyorgy@eutecus.com)
 by charon.eutecus.com (Postfix) with ESMTPSA id A9F4A2AA1CA
 for <barebox@lists.infradead.org>; Mon, 22 Jun 2015 08:19:10 -0700 (PDT)
Message-ID: <5588272F.9010803@eutecus.com>
Date: Mon, 22 Jun 2015 17:18:07 +0200
From: =?UTF-8?B?R3nDtnJneSBLw7Z2ZXNkaQ==?= <gyorgy.kovesdi@eutecus.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Compiling barebox for newest Yocto/meta-freescale
To: barebox@lists.infradead.org

Hi,

I have a i.MX6 based board and want to compile barebox using Yocto.
It was successful so far, but something is changed in the gcc behaviour.
The first thing is that some arch-specific parameters must be passed, or 
else the compilation fails. I could fix it, but there is another problem.
The option "-mfloat-abi=soft" is used in barebox compilation, which 
seems not supported by gcc. Adding "-mfloat-abi=hard" is not enough, the 
original "-mfloat-abi=soft" should be removed. Unfortunately, i could 
not find where this option is added and how to remove it.
Can anybody help me to fix it?

Thanx in advance
Gyorgy Kovesdi


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
