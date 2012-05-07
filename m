Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRKaR-0007TM-G5
 for barebox@lists.infradead.org; Mon, 07 May 2012 09:50:36 +0000
Date: Mon, 7 May 2012 11:50:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120507095032.GA27341@pengutronix.de>
References: <OF1B77598C.D26552F3-ONC12579F7.0033D84B-C12579F7.0034098E@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF1B77598C.D26552F3-ONC12579F7.0033D84B-C12579F7.0034098E@o0802.rafi.inhouse>
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
Subject: Re: string processing
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

On Mon, May 07, 2012 at 11:28:38AM +0200, christian.buettner@rafi.de wrote:
> hi all,
> 
> i was looking for c functions doing string processing. I cannot find 
> things like sscanf or atoi. 
> How do you work with strings when you implement custom commands?

We have simple_strtoul which currently is the only function to help with
string to integer conversion.

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
