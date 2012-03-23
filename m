Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB6Gd-0003i2-3P
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 15:19:08 +0000
Date: Fri, 23 Mar 2012 16:18:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120323151844.GQ3852@pengutronix.de>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1332347246-8777-1-git-send-email-dimov@ronetix.at>
 <1332347246-8777-3-git-send-email-dimov@ronetix.at>
 <20120322201758.GC3852@pengutronix.de>
 <4F6C72B8.6050604@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F6C72B8.6050604@ronetix.at>
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
Subject: Re: [PATCH v3 3/4] pm9g45: enable MCI0
To: RONETIX - Asen Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On Fri, Mar 23, 2012 at 02:55:20PM +0200, RONETIX - Asen Dimov wrote:
> Hello Sascha,
> 
> On 03/22/2012 10:17 PM, Sascha Hauer wrote:
> >On Wed, Mar 21, 2012 at 06:27:25PM +0200, Asen Chavdarov Dimov wrote:
> >>FIXME: part of or no data is written. File copy ends
> >>with message: "atmel_mci@atmel_mci0: command/data timeout"
> >Should I apply these patches? These FIXMEs seem to say that they don't
> >work.
> Yes, please.

Ok, did that.

Sascha

> At least reading ends with no errors.
> 
> >Sascha
> >
> Regards,
> Asen
> ...
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
