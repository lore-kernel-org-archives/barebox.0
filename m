Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PyUfB-00008F-3z
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 19:39:45 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PyUf9-0008Eo-3U
	for barebox@lists.infradead.org; Sat, 12 Mar 2011 20:39:43 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 12 Mar 2011 20:37:12 +0100
References: <201103071424.14270.jbe@pengutronix.de>
In-Reply-To: <201103071424.14270.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201103122037.13163.jbe@pengutronix.de>
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
Subject: Re: [RFC] S3C24xx: Fixing the NAND handling
To: barebox@lists.infradead.org

Hi,

sorry for the noise, but:

Juergen Beisert wrote:
> The NAND support for the S3C24xx CPU seems totally broken in the current
> kernel:

No, it isn't.

>  - the driver's local OOB layout for small page NANDs overwrites the
> vendors bad block marker (a really bad idea!)

It does not. I mixed it up with large page NANDs. :-(

>  - the ECC setup for large page NANDs violates NANDs partial write count
> (it forces 8 partial writes instead of allowed 4 per 2048 byte page)

It does not. The MTD framework writes the data in 8 pieces in this case. But 
from the NANDs point of view it is a single write only.

So, no need to fix anything in the kernel. Maybe only in my brain....

jbe

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
