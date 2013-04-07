Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOnzW-0007ea-4v
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 11:42:35 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ehexgmbs.fsf@intrepid.localdomain>
 <20130402065241.GB1906@pengutronix.de>
Date: Sun, 07 Apr 2013 13:42:21 +0200
In-Reply-To: <20130402065241.GB1906@pengutronix.de> (Sascha Hauer's message of
 "Tue, 2 Apr 2013 08:52:41 +0200")
Message-ID: <m3bo9q36ua.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] ARM: Add support for IXP4xx CPU and for Goramo Multilink
 router platform.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> +static struct eth_plat_info eth_pinfo[2] = {
>
> Why not use dynamically sized arrays?

What do you mean?


Everything else: done, will post shortly.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
