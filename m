Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5yQj-0001Jm-07
	for barebox@lists.infradead.org; Wed, 13 Oct 2010 10:19:29 +0000
Message-ID: <4CB587AD.4010609@eukrea.com>
Date: Wed, 13 Oct 2010 12:19:25 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1286963684-16359-1-git-send-email-eric@eukrea.com>
	<20101013100859.GN7412@game.jcrosoft.org>
In-Reply-To: <20101013100859.GN7412@game.jcrosoft.org>
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
Subject: Re: [PATCH] unbreak bootm
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

Le 13/10/2010 12:08, Jean-Christophe PLAGNIOL-VILLARD a =E9crit :
> On 11:54 Wed 13 Oct     , Eric B=E9nard wrote:
>> commit a3c1e5d888d0ee317ffc7635694684bb71213c9c was
>> not tested as all the tests are wrong and it breaks bootm

Sorry this was not meant to be offensive, just spent to much time
on this so my comment may be a little bit to agressive.

> I test it but no see it

How do you test this ? In the present case it prevents to boot a uImage.

I think some other tests may be concerned also but I didn't have time to =

check everywhere.

Will resend with the space fixed.

Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
