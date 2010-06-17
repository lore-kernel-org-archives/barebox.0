Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OPEeq-0004X5-OH
	for barebox@lists.infradead.org; Thu, 17 Jun 2010 12:57:25 +0000
Message-ID: <4C1A1BAF.2050603@eukrea.com>
Date: Thu, 17 Jun 2010 14:57:19 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <4C1A1289.4010505@erwinrol.com>
In-Reply-To: <4C1A1289.4010505@erwinrol.com>
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
Subject: Re: bareboxenv for target
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Erwin,

Le 17/06/2010 14:18, Erwin Rol a =E9crit :
> i would like to have the bareboxenv tool on my target system, but
> barebox only builds it for the host system.
>
> I am not that fit with kconfig so anybody a hint on how to compile it
> for the target system ?
>
# cd scripts
# arm-none-linux-gnueabi-gcc bareboxenv.c -o bbarm
# file bbarm
bbarm: ELF 32-bit LSB executable, ARM, version 1 (SYSV), dynamically =

linked (uses shared libs), for GNU/Linux 2.6.14, not stripped

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
