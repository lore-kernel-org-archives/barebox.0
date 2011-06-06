Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.97.mail-out.ovh.net ([188.165.48.85] helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTXKl-0001xf-0a
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 10:46:59 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id A42634B2214
	for <barebox@lists.infradead.org>;
	Mon,  6 Jun 2011 12:47:16 +0200 (CEST)
Date: Mon, 6 Jun 2011 12:33:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110606103355.GF11298@game.jcrosoft.org>
References: <1307351484-5159-1-git-send-email-plagnioj@jcrosoft.com>
	<20110606095813.GE23771@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110606095813.GE23771@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2 v2] complete: add device name complete support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:58 Mon 06 Jun     , Sascha Hauer wrote:
> On Mon, Jun 06, 2011 at 11:11:23AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/complete.c |   24 ++++++++++++++++++++++++
> >  1 files changed, 24 insertions(+), 0 deletions(-)
> 
> Sorry, this does not work. Pressing eth<TAB> on an empty command
> line expands to
> 
> ethact (correct, this is a command)
> eth0   (almost correct, it misses the '=')
> 
> 'ls <TAB>' expands to
> 
> ls env/ (correct, this is a directory)
> ls eth0 (incorrect, no valid expansion)
> 
> 'ls n<TAB> expands to
> 
> ls nand0     (incorrect, this is a device name and can't be used here=
> ls nfsroot=  (incorrect, no valid expansion)
> 
> Please check the context in which you are calling the different complete
> functions like I suggested in my comment to the last patch.
if devinfo it's valid

for the var evaluation we can use them when we want

ok I check

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
