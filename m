Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jppOg-0001AN-DO
 for barebox@lists.infradead.org; Mon, 29 Jun 2020 08:44:15 +0000
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
Date: Mon, 29 Jun 2020 10:44:12 +0200
MIME-Version: 1.0
In-Reply-To: <245646662.425432.1592925096458@mail.vodafone.de>
Content-Language: en-US
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
Subject: Re: reset / watchdog on an imx7d soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hello Giorgio,

On 6/23/20 5:11 PM, Giorgio Dal Molin wrote:
> Hi Fabio,
> 
> thank you for your quick reply.
> 
> I've already found the errata you linked in your mail but I had no success
> applying the suggestion there; maybe I'm doing it wrong.
> Let's take the Option 3 there:

Does reset within Linux (with say the imx_v6_v7_defconfg) work?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
