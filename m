Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3.bezeqint.net ([192.115.188.209])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PtdaC-0000lH-J1
	for barebox@lists.infradead.org; Sun, 27 Feb 2011 10:10:33 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Sun, 27 Feb 2011 12:09:59 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F894@SBS2008.wellsense.local>
References: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
	<201102271050.48537.jbe@pengutronix.de>
In-Reply-To: <201102271050.48537.jbe@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
To: "jbe@pengutronix.de" <jbe@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Itai Raab <itai.raab@wellsense-tech.com>

Sounds great.

Is there any documentation on how to "register" environments?

Thanks,

Boaz.

On Sun, 2011-02-27 at 10:50 +0100, Juergen Beisert wrote:
> Boaz Ben-David wrote:
> > We want to implement a mechanism in barebox to use two environment
> > partitions.
> > i.e. when barebox boots it will go to the first by default and try to
> > use it. If for some reason it fails
> > it will boot with the second one.
> >
> > What is the best way to implement this in barebox and did anyone do it
> > already?
> 
> AFAIR a mechanism like this is already present in barebox. It tries the first 
> environment, checks its CRC and if it fails it tries the next, if one exists.
> Just register env0, env1, .....
> 
> Regards,
> Juergen
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
> Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
