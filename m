Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieGRU-00061k-G1
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 10:39:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1ieGRR-0001a7-7k
 for barebox@lists.infradead.org; Mon, 09 Dec 2019 11:39:01 +0100
References: <20191204125659.22506-1-a.fatoum@pengutronix.de>
 <20191204125659.22506-9-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0a1b179b-399b-e28f-aaa2-d4215496fdd5@pengutronix.de>
Date: Mon, 9 Dec 2019 11:39:01 +0100
MIME-Version: 1.0
In-Reply-To: <20191204125659.22506-9-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 8/9] pci: add EFI PCI root bridge IO protocol driver
To: barebox@lists.infradead.org

On 12/4/19 1:56 PM, Ahmad Fatoum wrote:
> UEFI 2.1D specifies two protocols for abstracting both the PCI host bus
> controller and for PCI devices. The protocol for PCI devices provides
> function pointers for accessing IO Port, Memory and PCI configuration
> space, among others. The protocol for bus controllers provides the
> ability to read the root bridge's PCI configuration space and to query
> resources.
> 
> In barebox, we would want to reuse existing PCI drivers unmodified, so
> we utilize the root bridge protocol, unlike most other EFI payloads.

Please dismiss this patch for now. While it works on QEMU,
it doesn't handle address space descriptors of zero size (easily fixable)
and the PCI bridges on my laptop (not so easily fixable).

I'll resend when I had time to figure it out.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
