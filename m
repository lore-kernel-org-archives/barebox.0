Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq3lc-0002Db-JV
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 16:33:09 +0000
Received: from mail31.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 96944FF89CF
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 17:34:33 +0100 (CET)
Date: Mon, 9 Dec 2013 17:32:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209163252.GN27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-5-git-send-email-eric@eukrea.com>
 <20131209133001.GI27628@ns203013.ovh.net>
 <20131209155441.031ab16f@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131209155441.031ab16f@e6520eb>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/7] atmel_nand: make chip_delay configurable
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 15:54 Mon 09 Dec     , Eric B??nard wrote:
> Le Mon, 9 Dec 2013 14:30:01 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> > > this is usefull for custom boards with different NAND flashs
> > > (for informations u-boot defaults chip_delay to 75)
> > drop this comment on u-boot as in barebox we use the kernel driver
> =

> that's an information which can be usefull for other users on custom
> boards. Sorry if you don't like to read the word "u-boot" ;-)

so this part is useless

Best Regards,
J.
> =

> Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
