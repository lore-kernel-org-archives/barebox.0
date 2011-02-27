Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PtdJQ-0000ig-4V
	for barebox@lists.infradead.org; Sun, 27 Feb 2011 09:53:13 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 27 Feb 2011 10:50:48 +0100
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
In-Reply-To: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201102271050.48537.jbe@pengutronix.de>
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
Subject: Re: Fallback environment in barebox
To: barebox@lists.infradead.org
Cc: Itai Raab <itai.raab@wellsense-tech.com>

Boaz Ben-David wrote:
> We want to implement a mechanism in barebox to use two environment
> partitions.
> i.e. when barebox boots it will go to the first by default and try to
> use it. If for some reason it fails
> it will boot with the second one.
>
> What is the best way to implement this in barebox and did anyone do it
> already?

AFAIR a mechanism like this is already present in barebox. It tries the first 
environment, checks its CRC and if it fails it tries the next, if one exists.
Just register env0, env1, .....

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
