Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8yoH-0003GH-It
 for barebox@lists.infradead.org; Fri, 21 Aug 2020 04:37:50 +0000
Date: Fri, 21 Aug 2020 06:37:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200821043747.GB13023@pengutronix.de>
References: <1196968959.8187.1597925911899@mail.vodafone.de>
 <3254031d-0a9d-42c5-2e26-b41095d52227@pengutronix.de>
 <1964884639.8285.1597926404532@mail.vodafone.de>
 <15d59a58-4c45-c83f-cb96-17b2d3bc4c93@pengutronix.de>
 <670188591.8565.1597927841179@mail.vodafone.de>
 <20200820125723.GZ13023@pengutronix.de>
 <74919239.8952.1597930000296@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74919239.8952.1597930000296@mail.vodafone.de>
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
Subject: Re: NULL pointer deref crash on barebox 2020.08.0
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Thu, Aug 20, 2020 at 03:26:40PM +0200, Giorgio Dal Molin wrote:
> Hi,
> 
> can confirm v2020.08.1 fixes the problems I had with my cp from a squashfs.

Great, thanks for testing.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
