Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVyDg-0006Ui-Mz
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 08:11:53 +0000
Received: from mail240.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E1C09FFAB8A
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 09:11:26 +0100 (CET)
Date: Thu, 12 Mar 2015 09:11:21 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150312081121.GQ30554@ns203013.ovh.net>
References: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
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
Subject: Re: git fetch issue
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 12:05 Thu 12 Mar     , Antony Pavlov wrote:
> Hi All!
> =

> I have a problem with git-fetch. Here is the log:
> =

> antony@puro:~/barebox$ git remote show pengutronix | grep "Fetch URL"
>   Fetch URL: git://git.pengutronix.de/git/barebox.git
> =

> antony@puro:~/barebox$ git fetch pengutronix
> remote: Counting objects: 1101, done.
> remote: Compressing objects: 100% (199/199), done.
> remote: Total 771 (delta 628), reused 672 (delta 555)
> Receiving objects: 100% (771/771), 131.67 KiB | 0 bytes/s, done.
> error: index-pack died of signal 7
> fatal: index-pack failed
> =

> antony@puro:~/barebox$ git --version
> git version 2.1.4
> =

> =

> Any comments?

no issue here

same version

Best Regards,
J.
> =

> --=A0
> Best regards,
> =A0 Antony Pavlov
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
