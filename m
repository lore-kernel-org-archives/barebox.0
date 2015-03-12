Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVzQg-0004lt-11
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 09:29:23 +0000
Received: by labgq15 with SMTP id gq15so14468032lab.1
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 02:28:59 -0700 (PDT)
Date: Thu, 12 Mar 2015 13:32:53 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150312133253.e8445a7aadc4d131a56ee20d@gmail.com>
In-Reply-To: <550149C2.6010808@pengutronix.de>
References: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
 <550149C2.6010808@pengutronix.de>
Mime-Version: 1.0
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
To: Marc Kleine-Budde <mkl@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, 12 Mar 2015 09:09:38 +0100
Marc Kleine-Budde <mkl@pengutronix.de> wrote:

> On 03/12/2015 09:05 AM, Antony Pavlov wrote:
> > Hi All!
> > =

> > I have a problem with git-fetch. Here is the log:
> > =

> > antony@puro:~/barebox$ git remote show pengutronix | grep "Fetch URL"
> >   Fetch URL: git://git.pengutronix.de/git/barebox.git
> > =

> > antony@puro:~/barebox$ git fetch pengutronix
> > remote: Counting objects: 1101, done.
> > remote: Compressing objects: 100% (199/199), done.
> > remote: Total 771 (delta 628), reused 672 (delta 555)
> > Receiving objects: 100% (771/771), 131.67 KiB | 0 bytes/s, done.
> > error: index-pack died of signal 7
> > fatal: index-pack failed
> =

> Signal 7 is a Bus Error, maybe your local git repo is damaged or you
> having a hardware problem. Make a copy of your git repo (using "cp" or
> "tar") and try running "git fsck" on it.
> =

> I've just cloned from git://git.pengutronix.de/git/barebox.git using
> git-2.1.4 without problems.

It looks like my local repo is damaged ("git fsck" exits with a bus error m=
essage).
I suppose that the problem is likely due to my laptop yesterday emergency p=
ower off.
I have just re-cloned barebox.git from pengutronix. This new copy has no bu=
s error problem.

I'm very sorry for a false alarm.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
