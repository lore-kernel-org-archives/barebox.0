Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Bcv-0000Ee-De
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:21:30 +0000
Date: Fri, 8 Apr 2011 15:21:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110408132127.GW7285@pengutronix.de>
References: <4D9ED2EC.8070406@telemotive.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D9ED2EC.8070406@telemotive.de>
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
Subject: Re: Update barebox on mmc without touching partition table
To: Thomas Mayer <thomas.mayer@telemotive.de>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Fri, Apr 08, 2011 at 11:18:36AM +0200, Thomas Mayer wrote:
> Hi,
> 
> to copy barebox to a mmc I use the command "dd if=barebox.bin
> of=/dev/sdb bs=512 seek=2 skip=2 && sync". So I don't touch the
> first 0x400 bytes with contains the partition table and everything
> is fine.
> 
> But I want to write a little script to update barebox itself via
> tftp. So I create a partition "/dev/self0" (0x00000 to 0x40000) and
> update barebox with "tftp barebox.bin /dev/self0". The problem is
> that barebox write the first 0x400 bytes too and overwrite the
> partition table .
> 
> Is there any way to "seek" and "skip" with barebox?

Not directly. What you can do is this:

tftp barebox.bin
memcpy -s barebox.bin -d /dev/self0 512 0

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
