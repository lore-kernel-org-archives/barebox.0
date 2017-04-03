Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cv8O4-0005Wn-VJ
 for barebox@lists.infradead.org; Mon, 03 Apr 2017 20:15:43 +0000
Date: Mon, 3 Apr 2017 22:15:11 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170403201511.GA29829@ravnborg.org>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: State patches
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

On Fri, Mar 31, 2017 at 09:03:04AM +0200, Sascha Hauer wrote:
> Hi All,
> 
> Here is a ton of patches working on the state framework:
> 
> - make code easier to follow
>   - Drop cached backend, replace with open coded more direct code
>   - drop backend as extra struct type
>   - drop lazy init code
> - update documentation
> - Add keystore command
>   Using authenticated state requires hardware support which currently
>   is only available for i.MX6. At least for testing purposes a keystore
>   command to set keys is useful. This way authenticated state can be
>   tested without hardware support
> - more robust conversion of the backend path to a device node
> - make work better with NOR flash: The current code ended up reading
>   from NOR Flash byte by byte which was painfully slow

From browsing the patches this also brings a nice boot time improvement.
We avoid earsing the whole block (or whatever the right name is) until
we have filled it up with state entries.
I expect this tospeed up booting with at least a second on our target.

Will this require a newer version of dt-utils to work?
(When we for example update the sate from linux userspace)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
