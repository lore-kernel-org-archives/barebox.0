Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVqa-00076M-8C
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 17:15:29 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
References: <20191018114546.dbalujyk2x6oyqyi@pengutronix.de>
 <1571418627-279424-1-git-send-email-r.karszniewicz@phytec.de>
Message-ID: <7c7d28bb-0d1c-0b4f-7372-b409210b4a9f@phytec.de>
Date: Fri, 18 Oct 2019 19:15:27 +0200
MIME-Version: 1.0
In-Reply-To: <1571418627-279424-1-git-send-email-r.karszniewicz@phytec.de>
Content-Language: en-US
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
Subject: Re: [PATCH v3] libfile: copy_file: prevent spurious error message
To: barebox@lists.infradead.org

In all this haste, I forgot my question.

What error codes should be used? For each goto its own code, in 
sequence, starting from -1?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
