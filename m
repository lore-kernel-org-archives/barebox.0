Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YEaP0-0004tt-BD
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 09:19:43 +0000
Received: from mail184.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 85162100052D
 for <barebox@lists.infradead.org>; Fri, 23 Jan 2015 10:19:19 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20150123080457.GA12209@pengutronix.de>
Date: Fri, 23 Jan 2015 17:19:05 +0800
Message-Id: <6BAD5335-E077-4EE2-B95B-DFBAB1FE3858@jcrosoft.com>
References: <1421911613-9188-1-git-send-email-voice.shen@atmel.com>
 <20150123075129.GY12209@pengutronix.de>
 <81EDBB73-FDD1-48FC-A116-6AD21A073764@jcrosoft.com>
 <20150123080457.GA12209@pengutronix.de>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: let emac auto detect phy addr
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


> On Jan 23, 2015, at 4:04 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> On Fri, Jan 23, 2015 at 03:53:48PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> 
>>> On Jan 23, 2015, at 3:51 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>> 
>>> On Thu, Jan 22, 2015 at 03:26:53PM +0800, Bo Shen wrote:
>>>> On the SAMA5D35 the EMAC phy addr is 1 while not 0. So, let
>>>> the EMAC auto detect phy addr, or else hard code to 0, the
>>>> ethernet can not work on SAMA5D35 board.
>>>> 
>>>> Signed-off-by: Bo Shen <voice.shen@atmel.com>
>>> 
>>> There ere boards with different phy addresses around, so
>>> the current state does not work on all boards anyway. So the worst
>>> thing that can happen with this and the other patch for the gmac is
>>> that now another set of boards does not work. Let's give it a try.
>>> I'm open to reports when now some board stops working.
>>> 
>>> Applied this and the gmac patch.
>> 
>> except we can auto detect the board we are running from
>> so it will be better to specify it at Run time
>> 
>> as we have issue on auto detect on some of them
> 
> Ok, so your suggestion is to detect the board (type, revision?) and
> set phy_addr correctly based on this information, right? Fine with me
> aswell. Is it known which boards have which phy_addr?

yes and I already write the detection code in barebox

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
