Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVy4I-0007n8-7R
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 08:02:10 +0000
Received: by lbjb6 with SMTP id b6so14053831lbj.9
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 01:01:47 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id x5sm1156190laa.44.2015.03.12.01.01.45
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2015 01:01:46 -0700 (PDT)
Date: Thu, 12 Mar 2015 12:05:41 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
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
Subject: git fetch issue
To: barebox@lists.infradead.org

Hi All!

I have a problem with git-fetch. Here is the log:

antony@puro:~/barebox$ git remote show pengutronix | grep "Fetch URL"
  Fetch URL: git://git.pengutronix.de/git/barebox.git

antony@puro:~/barebox$ git fetch pengutronix
remote: Counting objects: 1101, done.
remote: Compressing objects: 100% (199/199), done.
remote: Total 771 (delta 628), reused 672 (delta 555)
Receiving objects: 100% (771/771), 131.67 KiB | 0 bytes/s, done.
error: index-pack died of signal 7
fatal: index-pack failed

antony@puro:~/barebox$ git --version
git version 2.1.4


Any comments?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
