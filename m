Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvXDY-0004Tj-9N
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 17:23:48 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 29 Jul 2012 19:22:43 +0200
References: <CA+LT+-T+8VD5ONbWyX+OQxk2MX221Z-vstimqpYKh3onY+5K3Q@mail.gmail.com>
In-Reply-To: <CA+LT+-T+8VD5ONbWyX+OQxk2MX221Z-vstimqpYKh3onY+5K3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207291922.43872.jbe@pengutronix.de>
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
Subject: Re: Barebox hangs after boot
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Hi Alexey,

Alexey Galakhov wrote:
> While debugging S5PV210 code I ran into the following problem. Barebox
> starts, the barebox command line appears on the console but does not
> react to keypresses. I found no obvious dependence on the config
> settings.
>
> What may be the cause of this problem and how do I debug it?

Broken timer?

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
