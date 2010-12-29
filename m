Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out10.bezeqint.net ([192.115.188.217])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY3JV-0005aa-RR
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 21:12:06 +0000
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Wed, 29 Dec 2010 23:11:59 +0200
Message-ID: <1xhec4ka7so7xglae2hemo2h.1293657114183@email.android.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: Re: 4096 page NAND boot support on iMX35 PDK board
To: =?iso-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Ok, thanks alot for the help!

Boaz.

Eric B=E9nard <eric@eukrea.com> wrote:


On 29/12/2010 22:05, Boaz Ben-David wrote:
> external

so you have to update this function to your hardware (ie : to add 4k page
support in the nand driver).

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
