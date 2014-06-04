Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.infomaniak.ch ([2001:1600:2:5:92b1:1cff:fe01:147])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ws7m9-0004Fk-UT
 for barebox@lists.infradead.org; Wed, 04 Jun 2014 09:46:41 +0000
Received: from [192.168.1.21] (LLagny-156-34-28-90.w193-253.abo.wanadoo.fr
 [193.253.254.90]) (authenticated bits=0)
 by smtp3.infomaniak.ch (8.14.5/8.14.5) with ESMTP id s549PVFM009647
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
 for <barebox@lists.infradead.org>; Wed, 4 Jun 2014 11:25:37 +0200
Message-ID: <538EE612.1050105@atysmedical.com>
Date: Wed, 04 Jun 2014 11:25:38 +0200
From: Thibaut Dambry <tdambry@atysmedical.com>
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
Subject: redirect stdout
To: barebox@lists.infradead.org

Hello

I'm sorry if it is a dummy question, but I don't find a answer.
I would like do that in a barebox hush shell:

value=`i2c_read -a 0x52 -b 0 -r 0x01 -c 1`

But the shell don't interpret the ``.

Is there a method to do that ?

Thank you for this exciting software, I would contribute but I'm a 
little intimidate by the great quality of hackers in this list.

-- 
---------------------------------------------------------
---------------------------------------------------------
Thibaut DAMBRY

ATYSMEDICAL			mailto:rd@atysmedical.com
17 Parc d'Arbora
69510 Soucieu en Jarrest
FRANCE

Phone:(33)4-78-05-69-69
Fax:  (33)4-78-05-69-60

---------------------------------------------------------


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
