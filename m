Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4-p00-ob.smtp.rzone.de ([81.169.146.162])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCMh-0003OD-NY
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:11:22 +0000
Received: from odin.home.erwinrol.com by smtp.strato.de (RZmta 44.4 DYNA|AUTH)
 with ESMTPSA id R0a5f6uAKK82a4F
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate)
 for <barebox@lists.infradead.org>;
 Tue, 20 Nov 2018 21:08:02 +0100 (CET)
Message-ID: <1542744481.4097.40.camel@erwinrol.com>
From: Erwin Rol <mailinglists@erwinrol.com>
Date: Tue, 20 Nov 2018 21:08:01 +0100
Mime-Version: 1.0
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
Subject: powerfail safe env save
To: Barebox List <barebox@lists.infradead.org>

Hallo,

as long time u-boot user I have several projects where we have a dual
dataflash "sector" in wich we store our env variables. And dual so we
always have or the correct old version or the correct new version even
if there is a power fail during saveenv.

Is powerfail robust env writing also available in barebox. Or what
would be the barebox equifelant of a number of config variables?

Any hints and tips are welcome.

TIA,

Erwin


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
