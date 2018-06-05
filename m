Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQI2x-0001it-7k
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 19:55:12 +0000
Date: Tue, 5 Jun 2018 21:54:58 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180605195458.GC32198@ravnborg.org>
References: <20180605174052.23679-1-pvizeli@syshack.ch>
 <20180605174052.23679-2-pvizeli@syshack.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180605174052.23679-2-pvizeli@syshack.ch>
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
Subject: Re: [PATCH 2/2] scripts/dtc: Update to upstream version 1.4.6
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

Hi Pascal.

If first patch depend on newer dtc, then this patch should be the first to avoid breaking bisectability.

	Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
