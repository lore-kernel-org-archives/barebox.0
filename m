Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8tT-00025w-FF
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 17:25:42 +0000
Date: Thu, 16 Jan 2020 18:25:08 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200116172508.eqeomvadqvjl5nvj@tellis.lin.mbt.kalray.eu>
References: <20191220143232.28354-10-s.hauer@pengutronix.de>
 <20200114132112.4119-1-jmaselbas@kalray.eu>
 <20200114142704.3t7vra5wlrzivi3n@pengutronix.de>
 <20200114171226.evt4nvuxe7gdc5bb@tellis.lin.mbt.kalray.eu>
 <20200116065027.psohiqog4awxye4h@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116065027.psohiqog4awxye4h@pengutronix.de>
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
Subject: Re: [RFC PATCH 0/7] usb: dwc2 host driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Matthias Mann <m.mann@arkona-technologies.de>

On Thu, Jan 16, 2020 at 07:50:27AM +0100, Sascha Hauer wrote:
> 
> Well, USB gadget support would be a strong argument for your version ;)
I am going to send a new version for the host driver alongside the gadget
support. I've made few cleanup (in both host and gadget driver). Although
there is still some stub functions in the gadget driver, I think is this
a good start.

cheers,
Jules

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
