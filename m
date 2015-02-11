Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLRfR-0008BZ-9X
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 07:25:02 +0000
Message-ID: <54DB0364.8020505@atmel.com>
Date: Wed, 11 Feb 2015 15:23:16 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>	<54DAB0AA.7090402@atmel.com>
 <CA+nEJinrt4TiRhESHZOepq-qyTq+Tj+wuMJfSv0Lxfjv2erEvA@mail.gmail.com>
In-Reply-To: <CA+nEJinrt4TiRhESHZOepq-qyTq+Tj+wuMJfSv0Lxfjv2erEvA@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] SAMA5D4EK - Now mostly supports booting Android from
 NAND.
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

Hi Doug,

On 02/11/2015 12:02 PM, Doug Brainard wrote:
> Sorry, this was more me not understanding "git send-email" the first

It's OK, won't worry.

> time and how to keep it only sending the latest commit.

We normally do it in steps
1. format patch
    $ git format-patch -s -n (n is the number of patch you plan to send, 
from top to bottom.)
2. check the patch
    $ ./scripts/checkpatch.pl <your patches>
3. send the patch
    $ git send-email --to=.. --cc=.. <patch files>

More details, please reference the documentation in kernel: 
https://www.kernel.org/doc/Documentation/SubmittingPatches

> Doug

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
