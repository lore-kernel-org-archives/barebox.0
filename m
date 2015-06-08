Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.meteocontrol.de ([62.245.201.114])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z1sO4-00050h-00
 for barebox@lists.infradead.org; Mon, 08 Jun 2015 08:26:28 +0000
Message-ID: <55755173.3080400@meteocontrol.de>
Date: Mon, 8 Jun 2015 10:25:23 +0200
From: Moritz Warning <m.warning@meteocontrol.de>
MIME-Version: 1.0
References: <556C271F.6040005@meteocontrol.de>
 <20150601120652.GH6325@pengutronix.de> <556C4C10.3010400@meteocontrol.de>
 <556C503B.4010405@meteocontrol.de> <20150603082406.GS6325@pengutronix.de>
In-Reply-To: <20150603082406.GS6325@pengutronix.de>
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
Subject: Re: Secure barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

In only need to hold down any key to enter Barebox when the
timeout is set to zero. So you don't lock yourself out.

I was a bit wary to try it out. :)

On 06/03/2015 10:24 AM, Sascha Hauer wrote:
> On Mon, Jun 01, 2015 at 02:29:47PM +0200, Moritz Warning wrote:
>> Oh, anyway; what happens when the timeout is 0.
>> How can you access the barebox again?
>
> You can try holding ctrl-c while starting the board. If that doesn't
> work I think you have to erase the environment externally. Where do you
> boot from?
>
> Sascha
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
