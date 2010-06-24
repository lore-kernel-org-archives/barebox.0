Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ORoLG-00010G-Cd
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 15:27:50 +0000
Message-ID: <4C237973.3020309@eukrea.com>
Date: Thu, 24 Jun 2010 17:27:47 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>	<1275645309-9756-14-git-send-email-s.hauer@pengutronix.de>
	<4C2377EA.3000608@eukrea.com>
In-Reply-To: <4C2377EA.3000608@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 13/13] add netconsole support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Le 24/06/2010 17:21, Eric B=E9nard a =E9crit :
>> +On the remote host call scripts/netconsole with bareboxes ip and port as
>> +parameters. port is initialized to 6666 by default.
>> +
> it seems scripts/netconsol is missing from the tree and the netconsole
> patche.
>
OK this seems to work :
netcat -p 6666 -l -u IP_OF_BAREBOX

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
