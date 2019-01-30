Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1govUf-0006sw-FM
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 19:25:56 +0000
Received: from vsmx004.vodafonemail.xion.oxcs.net (unknown [192.168.75.198])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTP id A0D75F34DC6
 for <barebox@lists.infradead.org>; Wed, 30 Jan 2019 19:25:51 +0000 (UTC)
Received: from edelweiss.myhome.de (unknown [91.56.159.211])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 6295819AD8A
 for <barebox@lists.infradead.org>; Wed, 30 Jan 2019 19:25:48 +0000 (UTC)
From: Kai Volkmar <kai.volkmar@nexgo.de>
Message-ID: <19d6d395-5263-26f0-b940-abbe60a0fc1b@nexgo.de>
Date: Wed, 30 Jan 2019 20:25:47 +0100
MIME-Version: 1.0
Content-Language: de-DE
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bootm of 2019.01.0 doesn't load/start images
To: barebox@lists.infradead.org

Hi everyone,

I tried to renew the barebox of an EDB9302 by 2019.01.0.
I used to load the new image by bootm command of the old version which
worked fine in at least 2018.01.0:

=A0=A0=A0 Loading ARM barebox image 'barebox.bin'
=A0=A0=A0 commandline: <NULL>
=A0=A0=A0 a=FFch_number: 538

2019.01.0's bootm recognizes the file type but fails afterwards with

=A0=A0=A0 Loading ARM barebox image 'barebox.bin'
=A0=A0=A0 handler failed with: Function not implemented

.

I'm not able to boot zImages by 2019.01.0's bootm as well which worked
with 2018.01.0 so I assume bootm is broken anywere between 2018.01.0 and
2019.01.0.

Anyway, it is possible to boot zImages by bootz.

Could you please point me in the right direction - I'm quite new at this
field, maybe I'm mistaking?

I can try other releases as well if this would be of any help.

Best regards,

Kai



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
