Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RUfRl-0001J0-76
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 14:11:11 +0000
Received: from [192.168.2.8] (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 7CD8CA659B
 for <barebox@lists.infradead.org>; Sun, 27 Nov 2011 15:10:57 +0100 (CET)
Message-ID: <4ED244F0.7050407@eukrea.com>
Date: Sun, 27 Nov 2011 15:10:56 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1321565812-335-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1321565812-335-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] fix unlzo support
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Le 17/11/2011 22:36, Sascha Hauer a =E9crit :
> unlzo support is broken for files>  256k (more than one block)
> since commit a3463cc12877f6527624972c190a80ebb787a604
> (lib/decompress_unlzo: use fill and full to read and write data)
> This patch updates unlzo support to the latest version of the kernel
> plus a small buffer free fix.
>
> Signed-off-by: Sascha Hauer<s.hauer@pengutronix.de>
Tested-by: Eric B=E9nard <eric@eukrea.com>

thanks !
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
