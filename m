Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pq1y4-0007sy-CX
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 11:24:17 +0000
Date: Thu, 17 Feb 2011 12:24:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110217112414.GC24426@pengutronix.de>
References: <201102171157.14757.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201102171157.14757.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to handle more than one network device in barebox
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 17, 2011 at 11:57:14AM +0100, Juergen Beisert wrote:
> Hi,
> 
> due to the fact (all?) network device drivers in barebox are using xzalloc to 
> allocate their "struct eth_device" the embedded "struct dev's" '.id' is 
> always '0'. So the registration of a second network device fails always with
> 
>  register_device: already registered eth0
> 
> Currently there is no way to overwrite the network device's ID. If I init 
> the "edev->dev.id" with '-1', it works. But it would be nice to define the 
> network device ordering from inside the platform (and not only with the order 
> I register the base devices). And copying the ".id" from the registered base 
> device also does not work if the network devices are of different type, due 
> to the framework starts with index 0 for different names.
> 
> Any ideas how to?

I stumbled upon this aswell.

I solved this with the following patch which I forgot to send to the
list. It still does not solve the issue that the order of network
devices is defined by the registration order, but at least it makes
multiple network devices work again.

Sascha

commit fe1864bdcf237a3ed0f5391e1cbd6cec13b518bc
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Thu Feb 3 13:07:57 2011 +0100

    network: initialize new net device id with -1
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/net/eth.c b/net/eth.c
index 8333d80..9eae17c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -151,6 +151,7 @@ int eth_register(struct eth_device *edev)
 	}
 
 	strcpy(edev->dev.name, "eth");
+	edev->dev.id = -1;
 	register_device(&edev->dev);
 
 	dev->type_data = edev;

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
