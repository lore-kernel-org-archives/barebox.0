Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORoV6-0001aU-0Z
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 15:38:00 +0000
Date: Thu, 24 Jun 2010 17:37:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624153757.GB12115@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
	<1275645309-9756-14-git-send-email-s.hauer@pengutronix.de>
	<4C2377EA.3000608@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C2377EA.3000608@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 13/13] add netconsole support
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 24, 2010 at 05:21:14PM +0200, Eric B=E9nard wrote:
> Hi Sascha,
>
> Le 04/06/2010 11:55, Sascha Hauer a =E9crit :
>> +
>> +On the remote host call scripts/netconsole with bareboxes ip and port as
>> +parameters. port is initialized to 6666 by default.
>> +
> it seems scripts/netconsol is missing from the tree and the netconsole  =

> patche.

Oh, I had it in my tree and forgot to commit. Did now.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
