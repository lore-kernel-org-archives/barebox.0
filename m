Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGUV8-0003uJ-Ad
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 12:44:35 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D1F97FFAC63
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 14:50:32 +0200 (CEST)
Date: Tue, 25 Sep 2012 14:42:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120925124203.GK26553@game.jcrosoft.org>
References: <1348575485-29549-1-git-send-email-t.gamez@phytec.de>
 <1348575485-29549-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348575485-29549-2-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2 1/2] ARM OMAP AM33XX: create new ARCH for AM33xx
To: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 14:18 Tue 25 Sep     , Teresa G=E1mez wrote:
> Created ARCH for AM33xx boards as second stage bootloader.
> This includes:
> - Added dmtimer0
> - Created basic header files
> - Added MMC support for ARCH_AM33XX
> - Added reset function
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
this on e looks good but please add the inline function to add the devices =
as
done on at91 or imx

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
