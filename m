Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE6lS-00081g-Pq
 for barebox@lists.infradead.org; Tue, 17 Mar 2020 07:35:52 +0000
Date: Tue, 17 Mar 2020 08:35:44 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200317073544.GA31188@ravnborg.org>
References: <20200316110008.2909-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316110008.2909-1-cleger@kalray.eu>
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
Subject: Re: [PATCH 0/2] Allow parsing more than one memory node
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Clement.

On Mon, Mar 16, 2020 at 12:00:06PM +0100, Clement Leger wrote:
> Currently, barebox can only parse one memory node. This means that
> all other memory nodes (with device_type == "memory") will be ignored
> while parsing memory.
> This patchset add a function of_probe_memory which will call
> of_add_memory for each found memory node. Additionally, of_add_memory
> has been modified to allow being called multiple times and correctly
> add all memory banks.
> 
> Clement Leger (2):
>   of: base: parse all available memory nodes
>   of: base: allow of_add_memory to be called multiple times

With this order of the patches, after applying patch 1 the
code will then use the last and not the first memory node.
And only after the second patch it will work.

I think to improve bisectability the order of the two patches should be
reversed.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
